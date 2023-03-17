import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageSwitcher(),
    );
  }
}

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Search page')),
    );
  }
}

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Chats page')),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Profile page')),
    );
  }
}

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Profile page')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  final List<Widget> pages = [
    const MyHomePage(),
    const Search(),
    const Chats(),
    const Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            //Коли пробував замінити SizedBox на Expanded постійно була помилка, що вважалось що розмір не обмежений
            SizedBox(
              width: MediaQuery.of(context).size.width - 88,
              height: MediaQuery.of(context).size.height * 0.025,
              child: ListView(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                scrollDirection: Axis.horizontal,
                children: const [
                  Text(
                      textScaleFactor: 0.9,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      "All pins"),
                  SizedBox(width: 10),
                  Text(
                      textScaleFactor: 0.9,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      "Cats"),
                  SizedBox(width: 10),
                  Text(
                      textScaleFactor: 0.9,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      "Dogs"),
                  SizedBox(width: 10),
                  Text(
                      textScaleFactor: 0.9,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      "Background"),
                  SizedBox(width: 10),
                  Text(
                      textScaleFactor: 0.9,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      "Aesthetic"),
                  SizedBox(width: 10),
                  Text(
                      textScaleFactor: 0.9,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      "Tattoo"),
                  SizedBox(width: 10),
                  Text(
                      textScaleFactor: 0.9,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      "Quotes"),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white24,
        surfaceTintColor: Colors.black,
        shadowColor: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 40,
            ),
            ListTile(
              dense: true,
              visualDensity: const VisualDensity(vertical: 4),
              title: const Text(
                  textScaleFactor: 1.3,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  "Properties"),
              onTap: () {},
            ),
            const Divider(
              color: Colors.grey,
            ),
            //Намагався відправити кнопку виходу вниз, але вона ніяк не хотіла туди йти, коли обгортав чимовсь ззовні теж не помагало
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: ListTile(
                  dense: true,
                  visualDensity: const VisualDensity(vertical: 4),
                  title: const Text(
                      textScaleFactor: 1.3,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      "Exit"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white24,
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.black,
      body: Container(
        color: Colors.white10,
        child: Column(
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).size.height * 0.025 -
                    128,
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const DetailPage(
                                          'A tiny, fluffy kitten peeking out with big, innocent eyes.',
                                          'id1',
                                          'assets/images/humberto-arellano-N_G2Sqdy9QY-unsplash.jpg')));
                                },
                                child: Hero(
                                  tag: 'id1',
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                            "assets/images/humberto-arellano-N_G2Sqdy9QY-unsplash.jpg"),
                                      ),
                                      Row(
                                        children: const [
                                          Expanded(
                                              flex: 5,
                                              child: Text(
                                                  textScaleFactor: 0.7,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  'A tiny, fluffy kitten peeking out with big, innocent eyes.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  color: Colors.white,
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const DetailPage(
                                          'A curious black and white kitten watching a butterfly flutter by.',
                                          'id2',
                                          'assets/images/esteban-chinchilla-9m1OFDFAuss-unsplash.jpg')));
                                },
                                child: Hero(
                                  tag: 'id2',
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                            "assets/images/esteban-chinchilla-9m1OFDFAuss-unsplash.jpg"),
                                      ),
                                      Row(
                                        children: const [
                                          Expanded(
                                              flex: 5,
                                              child: Text(
                                                  textScaleFactor: 0.7,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  'A curious black and white kitten watching a butterfly flutter by.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  color: Colors.white,
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const DetailPage(
                                          'A sleepy calico cat snuggled up on a cushion, purring contentedly.',
                                          'id3',
                                          'assets/images/jeanie-de-klerk-PAcT-amBgr4-unsplash.jpg')));
                                },
                                child: Hero(
                                  tag: 'id3',
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                            "assets/images/jeanie-de-klerk-PAcT-amBgr4-unsplash.jpg"),
                                      ),
                                      Row(
                                        children: const [
                                          Expanded(
                                              flex: 5,
                                              child: Text(
                                                  textScaleFactor: 0.7,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  'A sleepy calico cat snuggled up on a cushion, purring contentedly.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  color: Colors.white,
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const DetailPage(
                                          'A playful Siamese kitten batting at a feather wand.',
                                          'id4',
                                          'assets/images/sajad-nori-s1puI2BWQzQ-unsplash.jpg')));
                                },
                                child: Hero(
                                  tag: 'id4',
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                            "assets/images/sajad-nori-s1puI2BWQzQ-unsplash.jpg"),
                                      ),
                                      Row(
                                        children: const [
                                          Expanded(
                                              flex: 5,
                                              child: Text(
                                                  textScaleFactor: 0.7,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  'A playful Siamese kitten batting at a feather wand.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  color: Colors.white,
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const DetailPage(
                                          'A tiny, fluffy kitten peeking out with big, innocent eyes.',
                                          'id5',
                                          'assets/images/dollar-gill-AyrVL1W0OLo-unsplash.jpg')));
                                },
                                child: Hero(
                                  tag: 'id5',
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                            "assets/images/dollar-gill-AyrVL1W0OLo-unsplash.jpg"),
                                      ),
                                      Row(
                                        children: const [
                                          Expanded(
                                              flex: 5,
                                              child: Text(
                                                  textScaleFactor: 0.7,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  'A tiny, fluffy kitten peeking out with big, innocent eyes.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  color: Colors.white,
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const DetailPage(
                                          'A tuxedo cat snuggling up with its owner for a nap.',
                                          'id6',
                                          'assets/images/yoo-ho-E3LcqpQxtTU-unsplash.jpg')));
                                },
                                child: Hero(
                                  tag: 'id6',
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                            "assets/images/yoo-ho-E3LcqpQxtTU-unsplash.jpg"),
                                      ),
                                      Row(
                                        children: const [
                                          Expanded(
                                              flex: 5,
                                              child: Text(
                                                  textScaleFactor: 0.7,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  'A tuxedo cat snuggling up with its owner for a nap.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  color: Colors.white,
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const DetailPage(
                                          'A mischievous ginger kitten peeking out from behind a curtain.',
                                          'id7',
                                          'assets/images/borna-bevanda-VwqecUsYKvs-unsplash.jpg')));
                                },
                                child: Hero(
                                  tag: 'id7',
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                            "assets/images/borna-bevanda-VwqecUsYKvs-unsplash.jpg"),
                                      ),
                                      Row(
                                        children: const [
                                          Expanded(
                                              flex: 5,
                                              child: Text(
                                                  textScaleFactor: 0.7,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  'A mischievous ginger kitten peeking out from behind a curtain.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  color: Colors.white,
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const DetailPage(
                                          'A regal black cat surveying its kingdom from atop a bookshelf.',
                                          'id8',
                                          'assets/images/anastasiia-rozumna-vi3yGOPBZSY-unsplash.jpg')));
                                },
                                child: Hero(
                                  tag: 'id8',
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                            "assets/images/anastasiia-rozumna-vi3yGOPBZSY-unsplash.jpg"),
                                      ),
                                      Row(
                                        children: const [
                                          Expanded(
                                              flex: 5,
                                              child: Text(
                                                  textScaleFactor: 0.7,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  'A regal black cat surveying its kingdom from atop a bookshelf.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  color: Colors.white,
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const DetailPage(
                                          'A sweet grey and white cat curled up on a fluffy blanket, with a contented expression.',
                                          'id9',
                                          'assets/images/giovanna-gomes-0cyXsESU9yw-unsplash.jpg')));
                                },
                                child: Hero(
                                  tag: 'id9',
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                            "assets/images/giovanna-gomes-0cyXsESU9yw-unsplash.jpg"),
                                      ),
                                      Row(
                                        children: const [
                                          Expanded(
                                              flex: 5,
                                              child: Text(
                                                  textScaleFactor: 0.7,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  'A sweet grey and white cat curled up on a fluffy blanket, with a contented expression.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  color: Colors.white,
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const DetailPage(
                                          'A cute white kitten with bright blue eyes snuggled up in a cozy sweater.',
                                          'id10',
                                          'assets/images/jiawei-zhao-BsXeYX3efOI-unsplash.jpg')));
                                },
                                child: Hero(
                                  tag: 'id10',
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                            "assets/images/jiawei-zhao-BsXeYX3efOI-unsplash.jpg"),
                                      ),
                                      Row(
                                        children: const [
                                          Expanded(
                                              flex: 5,
                                              child: Text(
                                                  textScaleFactor: 0.7,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  'A cute white kitten with bright blue eyes snuggled up in a cozy sweater.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  color: Colors.white,
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const DetailPage(
                                          'A tiny, fluffy kitten peeking out with big, innocent eyes.',
                                          'id11',
                                          'assets/images/mikhail-vasilyev-MEb2jandkbc-unsplash.jpg')));
                                },
                                child: Hero(
                                  tag: 'id11',
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                            "assets/images/mikhail-vasilyev-MEb2jandkbc-unsplash.jpg"),
                                      ),
                                      Row(
                                        children: const [
                                          Expanded(
                                              flex: 5,
                                              child: Text(
                                                  textScaleFactor: 0.7,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  'A tiny, fluffy kitten peeking out with big, innocent eyes.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  color: Colors.white,
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const DetailPage(
                                          'A fluffy black and white cat perched on a shelf, peering down with a curious expression.',
                                          'id12',
                                          'assets/images/jan-kopriva-IZ7W626JoQs-unsplash.jpg')));
                                },
                                child: Hero(
                                  tag: 'id12',
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                            "assets/images/jan-kopriva-IZ7W626JoQs-unsplash.jpg"),
                                      ),
                                      Row(
                                        children: const [
                                          Expanded(
                                              flex: 5,
                                              child: Text(
                                                  textScaleFactor: 0.7,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  'A fluffy black and white cat perched on a shelf, peering down with a curious expression.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  color: Colors.white,
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
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
    const MyHomePage(),
    const Search(),
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            label: 'Conversations',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
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

class DetailPage extends StatelessWidget {
  final String objectID;
  final String imageSignature;
  final String objectLocation;
  const DetailPage(this.imageSignature, this.objectID, this.objectLocation,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Pin\'s details'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close))
        ],
      ),
      body: Hero(
        tag: objectID,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(objectLocation),
            ),
            Row(
              children: [
                Expanded(
                    flex: 7,
                    child: Container(
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 5, vertical: 20),
                      child: Text(
                          textScaleFactor: 1,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          imageSignature),
                    )),
                const Expanded(
                    flex: 1, child: Icon(color: Colors.white, Icons.more_horiz))
              ],
            )
          ],
        ),
      ),
    );
  }
}
