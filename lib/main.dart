import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter3/providers/favorites_provider.dart';
import 'package:flutter3/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter3/views/widgets/chats_page.dart';
import 'package:flutter3/views/widgets/feed_page.dart';
import 'package:flutter3/views/widgets/post_page.dart';
import 'package:flutter3/views/widgets/profile_page.dart';
import 'package:flutter3/views/widgets/search_page.dart';

GlobalKey<NavigatorState> _feedNavigatorKey = GlobalKey<NavigatorState>();
GlobalKey<NavigatorState> _searchNavigatorKey = GlobalKey<NavigatorState>();
GlobalKey<NavigatorState> _postNavigatorKey = GlobalKey<NavigatorState>();
GlobalKey<NavigatorState> _chatsNavigatorKey = GlobalKey<NavigatorState>();
GlobalKey<NavigatorState> _profileNavigatorKey = GlobalKey<NavigatorState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(
          create: (BuildContext context) {
            return ThemeProvider();
          },
        ),
        ChangeNotifierProvider<FavoriteProvider>(
          create: (BuildContext context) {
            return FavoriteProvider();
          },
        )
      ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: Provider.of<ThemeProvider>(context).currentTheme,
          initialRoute: '/',
          routes: {
            '/' : (context) => const PageSwitcher(),
            '/feed' : (context) => const Feed(),
            '/search' : (context) => const Search(),
            '/post' : (context) => const Post(),
            '/chats' : (context) => const Chats(),
            '/profile' : (context) => const Profile(),
          },
          //home: const PageSwitcher(),

        );
  }
}

class PageSwitcher extends StatefulWidget {
  const PageSwitcher({super.key});

  @override
  State<PageSwitcher> createState() => _PageSwitcherState();
}

class _PageSwitcherState extends State<PageSwitcher>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;


  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    _feedNavigatorKey,
    _searchNavigatorKey,
    _postNavigatorKey,
    _chatsNavigatorKey,
    _profileNavigatorKey,
  ];

  Future<bool> _systemBackButtonPressed() {
    if (_navigatorKeys[_selectedIndex].currentState!.canPop()) {
      _navigatorKeys[_selectedIndex]
          .currentState!
          .pop(_navigatorKeys[_selectedIndex].currentContext);
    } else {
      SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
    }
    throw Exception();
  }


  final List<Widget> pages = [
    const Feed(),
    const Search(),
    const Post(),
    const Chats(),
    const Profile()
  ];
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(vsync: this, length: pages.length, initialIndex: 0);
    tabController.addListener(() {
      setState(() {
        _selectedIndex = tabController.index;
        tabController.animateTo(_selectedIndex);
      });
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      tabController.animateTo(_selectedIndex);
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: _systemBackButtonPressed,
      child: Scaffold(
        body: SafeArea(
          top: false,
          child: IndexedStack(
            index: _selectedIndex,
            children: pages,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? const Icon(Icons.home_outlined)
                  : const Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? const Icon(Icons.search_outlined)
                  : const Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
                icon: _selectedIndex == 2
                    ? const Icon(Icons.add_outlined)
                    : const Icon(Icons.add),
                label: 'Post'),
            BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? const Icon(Icons.comment_outlined)
                  : const Icon(Icons.comment),
              label: 'Conversations',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 4
                  ? const Icon(Icons.person_outline)
                  : const Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),

      ),
    );
  }
}
