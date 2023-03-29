import 'package:flutter/material.dart';
import 'package:flutter3/views/widgets/chats_page.dart';
import 'package:flutter3/views/widgets/feed_page.dart';
import 'package:flutter3/views/widgets/post_page.dart';
import 'package:flutter3/views/widgets/profile_page.dart';
import 'package:flutter3/views/widgets/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageSwitcherChild(),
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
    return Scaffold(
      backgroundColor: Colors.black,
      body: TabBarView(
        controller: tabController,
        children: pages,
      ),
    );
  }
}

class PageSwitcherChild extends PageSwitcher{
  const PageSwitcherChild({super.key});

  @override
  _PageSwitcherChildState createState() => _PageSwitcherChildState();
}

class _PageSwitcherChildState extends _PageSwitcherState {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: TabBarView(
        controller: tabController,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0 ? const Icon(Icons.home_outlined) : const Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1 ? const Icon(Icons.search_outlined) : const Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
              icon: _selectedIndex == 2 ? const Icon(Icons.add_outlined) : const Icon(Icons.add),
              label: 'Post'
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3 ? const Icon(Icons.comment_outlined) : const Icon(Icons.comment),
            label: 'Conversations',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 4 ? const Icon(Icons.person_outline) : const Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white30,
        backgroundColor: Colors.white10,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}


// class PageSwitcher extends StatefulWidget {
//   const PageSwitcher({super.key});
//
//   @override
//   State<PageSwitcher> createState() => _PageSwitcherState();
// }
//
// class _PageSwitcherState extends State<PageSwitcher>
//     with SingleTickerProviderStateMixin {
//   int _selectedIndex = 0;
//   final List<Widget> pages = [
//     const Feed(),
//     const Search(),
//     const Post(),
//     const Chats(),
//     const Profile()
//   ];
//   late TabController tabController;
//
//   @override
//   void initState() {
//     super.initState();
//     tabController =
//         TabController(vsync: this, length: pages.length, initialIndex: 0);
//     tabController.addListener(() {
//       setState(() {
//         _selectedIndex = tabController.index;
//         tabController.animateTo(_selectedIndex);
//       });
//     });
//   }
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//       tabController.animateTo(_selectedIndex);
//     });
//   }
//
//   @override
//   void dispose() {
//     tabController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: TabBarView(
//         controller: tabController,
//         children: pages,
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: _selectedIndex == 0 ? const Icon(Icons.home_outlined) : const Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: _selectedIndex == 1 ? const Icon(Icons.search_outlined) : const Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//               icon: _selectedIndex == 2 ? const Icon(Icons.add_outlined) : const Icon(Icons.add),
//               label: 'Post'
//           ),
//           BottomNavigationBarItem(
//             icon: _selectedIndex == 3 ? const Icon(Icons.comment_outlined) : const Icon(Icons.comment),
//             label: 'Conversations',
//           ),
//           BottomNavigationBarItem(
//             icon: _selectedIndex == 4 ? const Icon(Icons.person_outline) : const Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//         type: BottomNavigationBarType.fixed,
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         unselectedItemColor: Colors.white,
//         selectedItemColor: Colors.white30,
//         backgroundColor: Colors.white10,
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
//
