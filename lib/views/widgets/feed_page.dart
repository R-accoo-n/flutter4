import 'package:flutter/material.dart';
import 'package:flutter3/views/widgets/chats_page.dart';
import 'package:flutter3/views/widgets/detail_post_page.dart';
import 'package:flutter3/views/widgets/post_page.dart';
import 'package:flutter3/views/widgets/profile_page.dart';
import 'package:flutter3/views/widgets/search_page.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed>
    with SingleTickerProviderStateMixin {
  final List<Widget> pages = [
    const Feed(),
    const Search(),
    const Post(),
    const Chats(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width - 32,
              height: MediaQuery.of(context).size.height * 0.025,
              child: ListView(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                scrollDirection: Axis.horizontal,
                children: const [
                  Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      "All pins"),
                  SizedBox(width: 10),
                  Text(
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),
                      "Cats"),
                  SizedBox(width: 10),
                  Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      "Dogs"),
                  SizedBox(width: 10),
                  Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      "Background"),
                  SizedBox(width: 10),
                  Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      "Aesthetic"),
                  SizedBox(width: 10),
                  Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      "Tattoo"),
                  SizedBox(width: 10),
                  Text(
                      style: TextStyle(
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
      body: Column(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).size.height * 0.025 -
                  130,
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () async {
                                var res = await
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const DetailPage(
                                        'A tiny, fluffy kitten peeking out with big, innocent eyes.',
                                        'id1',
                                        'assets/images/humberto-arellano-N_G2Sqdy9QY-unsplash.jpg')
                                )
                                );
                                print(res);
                              },
                              child: Hero(
                                tag: 'id1',
                                child: Material(
                                  type: MaterialType.transparency,
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
                                                      fontWeight:
                                                      FontWeight.bold),
                                                  'A tiny, fluffy kitten peeking out with big, innocent eyes.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
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
                                child: Material(
                                  type: MaterialType.transparency,
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
                                                      fontWeight:
                                                      FontWeight.bold),
                                                  'A curious black and white kitten watching a butterfly flutter by.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
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
                                child: Material(
                                  type: MaterialType.transparency,
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
                                                      fontWeight:
                                                      FontWeight.bold),
                                                  'A sleepy calico cat snuggled up on a cushion, purring contentedly.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
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
                                child: Material(
                                  type: MaterialType.transparency,
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
                                                      fontWeight:
                                                      FontWeight.bold),
                                                  'A playful Siamese kitten batting at a feather wand.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
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
                                child: Material(
                                  type: MaterialType.transparency,
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
                                                      fontWeight:
                                                      FontWeight.bold),
                                                  'A tiny, fluffy kitten peeking out with big, innocent eyes.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
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
                                child: Material(
                                  type: MaterialType.transparency,
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
                                                      fontWeight:
                                                      FontWeight.bold),
                                                  'A tuxedo cat snuggling up with its owner for a nap.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
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
                                child: Material(
                                  type: MaterialType.transparency,
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
                                                      fontWeight:
                                                      FontWeight.bold),
                                                  'A mischievous ginger kitten peeking out from behind a curtain.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
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
                                child: Material(
                                  type: MaterialType.transparency,
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
                                                      fontWeight:
                                                      FontWeight.bold),
                                                  'A regal black cat surveying its kingdom from atop a bookshelf.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
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
                                child: Material(
                                  type: MaterialType.transparency,
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
                                                      fontWeight:
                                                      FontWeight.bold),
                                                  'A sweet grey and white cat curled up on a fluffy blanket, with a contented expression.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
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
                                child: Material(
                                  type: MaterialType.transparency,
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
                                                      fontWeight:
                                                      FontWeight.bold),
                                                  'A cute white kitten with bright blue eyes snuggled up in a cozy sweater.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
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
                                child: Material(
                                  type: MaterialType.transparency,
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
                                                      fontWeight:
                                                      FontWeight.bold),
                                                  'A tiny, fluffy kitten peeking out with big, innocent eyes.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  Icons.more_horiz))
                                        ],
                                      )
                                    ],
                                  ),
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
                                child: Material(
                                  type: MaterialType.transparency,
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
                                                      fontWeight:
                                                      FontWeight.bold),
                                                  'A fluffy black and white cat perched on a shelf, peering down with a curious expression.')),
                                          Expanded(
                                              flex: 1,
                                              child: Icon(
                                                  Icons.more_horiz))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}