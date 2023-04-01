import 'package:flutter/material.dart';
import 'package:flutter3/models/favorites_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'detail_post_page.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile>{

  @override
  Widget build(BuildContext context) {
    List<Widget> objectsInColumns = List.generate(
        Provider.of<FavoriteModel>(context, listen: false).totalAmount,
        (index) {
      return InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailPage(
                    Provider.of<FavoriteModel>(context, listen: false)
                        .posts
                        .elementAt(index)
                        .imageSignature,
                    Provider.of<FavoriteModel>(context, listen: false)
                        .posts
                        .elementAt(index)
                        .objectID,
                    Provider.of<FavoriteModel>(context, listen: false)
                        .posts
                        .elementAt(index)
                        .objectLocation)));
          },
          child: Hero(
            tag: Provider.of<FavoriteModel>(context, listen: false)
                .posts
                .elementAt(index)
                .objectID,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                      Provider.of<FavoriteModel>(context, listen: false)
                          .posts
                          .elementAt(index)
                          .objectLocation),
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 5,
                        child: Text(
                            textScaleFactor: 0.7,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            Provider.of<FavoriteModel>(context, listen: false)
                                .posts
                                .elementAt(index)
                                .imageSignature)),
                    const Expanded(
                        flex: 1,
                        child: Icon(color: Colors.white, Icons.more_horiz)),
                    const SizedBox(height: 10,)
                  ],
                )
              ],
            ),
          ));
    });

    void regenerateAllObjets(){
      objectsInColumns = List.generate(
          Provider.of<FavoriteModel>(context, listen: false).totalAmount,
              (index) {
            return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailPage(
                          Provider.of<FavoriteModel>(context, listen: false)
                              .posts
                              .elementAt(index)
                              .imageSignature,
                          Provider.of<FavoriteModel>(context, listen: false)
                              .posts
                              .elementAt(index)
                              .objectID,
                          Provider.of<FavoriteModel>(context, listen: false)
                              .posts
                              .elementAt(index)
                              .objectLocation)));
                },
                child: Hero(
                  tag: Provider.of<FavoriteModel>(context, listen: false)
                      .posts
                      .elementAt(index)
                      .objectID,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                            Provider.of<FavoriteModel>(context, listen: false)
                                .posts
                                .elementAt(index)
                                .objectLocation),
                      ),
                      Row(
                        children: [
                          Expanded(
                              flex: 5,
                              child: Text(
                                  textScaleFactor: 0.7,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  Provider.of<FavoriteModel>(context, listen: false)
                                      .posts
                                      .elementAt(index)
                                      .imageSignature)),
                          const Expanded(
                              flex: 1,
                              child: Icon(color: Colors.white, Icons.more_horiz)),
                          const SizedBox(height: 10,)
                        ],
                      )
                    ],
                  ),
                ));
          });
    }


    List<Widget> leftColumn = [];
    for(int i = 0; i < objectsInColumns.length; i+=2){
      leftColumn.add(objectsInColumns.elementAt(i));
    }

    void regenerateLeftColumn(){
      for(int i = 0; i < objectsInColumns.length; i+=2){
        leftColumn.add(objectsInColumns.elementAt(i));
      }
    }

    List<Widget> rightColumn = [];
    for(int i = 1; i < objectsInColumns.length; i+=2){
      rightColumn.add(objectsInColumns.elementAt(i));
    }

    void regenerateRightColumn(){
      for(int i = 1; i < objectsInColumns.length; i+=2){
        rightColumn.add(objectsInColumns.elementAt(i));
      }
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Icon(Icons.share),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.more_horiz),
          ],
        ),
      ),
      body: Container(
          color: Colors.white10,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage(
                    'assets/images/sajad-nori-s1puI2BWQzQ-unsplash.jpg'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  textScaleFactor: 2,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  'Nickname'),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  textScaleFactor: 1,
                  style: TextStyle(
                    color: Colors.white30,
                    fontWeight: FontWeight.bold,
                  ),
                  '@idname'),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                      textScaleFactor: 1,
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                      'followers 0'),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.circle, color: Colors.white, size: 3),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                      textScaleFactor: 1,
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.bold),
                      'following 0'),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                      textScaleFactor: 1.1,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      'Created'),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                      textScaleFactor: 1.1,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                      'Saved'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      flex: 7,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 40,
                          color: Colors.white10,
                          child: Row(
                            children: const [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.search, color: Colors.white30),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                  textScaleFactor: 1.1,
                                  style: TextStyle(
                                      color: Colors.white30,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.italic),
                                  'Search for pins'),
                            ],
                          ),
                        ),
                      )),
                  const Expanded(
                      flex: 1,
                      child: Icon(
                        FontAwesomeIcons.sliders,
                        color: Colors.white,
                      )),
                  const Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(width: 10),
                          Expanded(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: leftColumn
                              )
                          ),
                          const SizedBox(width: 5,),
                          Expanded(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: rightColumn
                              )
                          ),
                          const SizedBox(width: 10),
                        ])
                  ]))
              // Expanded(
              //     child: ListView(
              //       padding: EdgeInsets.zero,
              //       scrollDirection: Axis.vertical,
              //       children: [
              //         Row(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             const SizedBox(width: 10),
              //             Expanded(
              //                 child: Column(
              //                   mainAxisAlignment: MainAxisAlignment.center,
              //                   children: [
              //                     Column(
              //                       crossAxisAlignment:
              //                       CrossAxisAlignment.start,
              //                       children: [
              //                         ClipRRect(
              //                           borderRadius: BorderRadius.circular(20),
              //                           child: Image.asset(
              //                               "assets/images/humberto-arellano-N_G2Sqdy9QY-unsplash.jpg"),
              //                         ),
              //                         const SizedBox(height: 5,),
              //                         Row(
              //                           children: const [
              //                             SizedBox(width: 5,),
              //                             Text(
              //                                 textScaleFactor: 1.2,
              //                                 style: TextStyle(
              //                                     color: Colors.white,
              //                                     fontWeight:
              //                                     FontWeight.bold),
              //                                 'All pins'),
              //
              //                           ],
              //                         ),
              //                         Row(
              //                           children: const [
              //                             SizedBox(width: 5,),
              //                             Text(
              //                                 textScaleFactor: 0.9,
              //                                 style: TextStyle(
              //                                     color: Colors.white,),
              //                                 '10 pins'
              //                             ),
              //                             SizedBox(
              //                               width: 10,
              //                             ),
              //                             Text(
              //                                 textScaleFactor: 0.9,
              //                                 style: TextStyle(
              //                                   color: Colors.white38,),
              //                                 '3 month.'
              //                             ),
              //
              //                           ],
              //                         )
              //                       ],
              //                     ),
              //                     const SizedBox(height: 10),
              //                     Column(
              //                       crossAxisAlignment:
              //                       CrossAxisAlignment.start,
              //                       children: [
              //                         ClipRRect(
              //                           borderRadius: BorderRadius.circular(20),
              //                           child: Image.asset(
              //                               "assets/images/catsExmpl.png"),
              //                         ),
              //                         const SizedBox(height: 5,),
              //                         Row(
              //                           children: const [
              //                             SizedBox(width: 5,),
              //                             Text(
              //                                 textScaleFactor: 1.2,
              //                                 style: TextStyle(
              //                                     color: Colors.white,
              //                                     fontWeight:
              //                                     FontWeight.bold),
              //                                 'Cats'),
              //
              //                           ],
              //                         ),
              //                         Row(
              //                           children: const [
              //                             SizedBox(width: 5,),
              //                             Text(
              //                                 textScaleFactor: 0.9,
              //                                 style: TextStyle(
              //                                   color: Colors.white,),
              //                                 '11 pins'
              //                             ),
              //                             SizedBox(
              //                               width: 10,
              //                             ),
              //                             Text(
              //                                 textScaleFactor: 0.9,
              //                                 style: TextStyle(
              //                                   color: Colors.white38,),
              //                                 '2 month.'
              //                             ),
              //
              //                           ],
              //                         )
              //                       ],
              //                     ),
              //                     const SizedBox(height: 10),
              //                     Column(
              //                       crossAxisAlignment:
              //                       CrossAxisAlignment.start,
              //                       children: [
              //                         ClipRRect(
              //                           borderRadius: BorderRadius.circular(20),
              //                           child: Image.asset(
              //                               "assets/images/dogExmpl.png"),
              //                         ),
              //                         const SizedBox(height: 5,),
              //                         Row(
              //                           children: const [
              //                             SizedBox(width: 5,),
              //                             Text(
              //                                 textScaleFactor: 1.2,
              //                                 style: TextStyle(
              //                                     color: Colors.white,
              //                                     fontWeight:
              //                                     FontWeight.bold),
              //                                 'Dogs'),
              //
              //                           ],
              //                         ),
              //                         Row(
              //                           children: const [
              //                             SizedBox(width: 5,),
              //                             Text(
              //                                 textScaleFactor: 0.9,
              //                                 style: TextStyle(
              //                                   color: Colors.white,),
              //                                 '8 pins'
              //                             ),
              //                             SizedBox(
              //                               width: 10,
              //                             ),
              //                             Text(
              //                                 textScaleFactor: 0.9,
              //                                 style: TextStyle(
              //                                   color: Colors.white38,),
              //                                 '4 month.'
              //                             ),
              //
              //                           ],
              //                         )
              //                       ],
              //                     ),
              //                   ],
              //                 )
              //             ),
              //             const SizedBox(
              //               width: 5,
              //             ),
              //             Expanded(
              //                 child: Column(
              //                   mainAxisAlignment: MainAxisAlignment.center,
              //                   children: [
              //                     Column(
              //                       crossAxisAlignment:
              //                       CrossAxisAlignment.start,
              //                       children: [
              //                         ClipRRect(
              //                           borderRadius: BorderRadius.circular(20),
              //                           child: Image.asset(
              //                               "assets/images/backgroundExmpl.png"),
              //                         ),
              //                         const SizedBox(height: 5,),
              //                         Row(
              //                           children: const [
              //                             SizedBox(width: 5,),
              //                             Text(
              //                                 textScaleFactor: 1.2,
              //                                 style: TextStyle(
              //                                     color: Colors.white,
              //                                     fontWeight:
              //                                     FontWeight.bold),
              //                                 'Background'),
              //
              //                           ],
              //                         ),
              //                         Row(
              //                           children: const [
              //                             SizedBox(width: 5,),
              //                             Text(
              //                                 textScaleFactor: 0.9,
              //                                 style: TextStyle(
              //                                   color: Colors.white,),
              //                                 '15 pins'
              //                             ),
              //                             SizedBox(
              //                               width: 10,
              //                             ),
              //                             Text(
              //                                 textScaleFactor: 0.9,
              //                                 style: TextStyle(
              //                                   color: Colors.white38,),
              //                                 '1 month.'
              //                             ),
              //
              //                           ],
              //                         )
              //                       ],
              //                     ),
              //                     const SizedBox(height: 10),
              //                     Column(
              //                       crossAxisAlignment:
              //                       CrossAxisAlignment.start,
              //                       children: [
              //                         ClipRRect(
              //                           borderRadius: BorderRadius.circular(20),
              //                           child: Image.asset(
              //                               "assets/images/aesteticExmpl.png"),
              //                         ),
              //                         const SizedBox(height: 5,),
              //                         Row(
              //                           children: const [
              //                             SizedBox(width: 5,),
              //                             Text(
              //                                 textScaleFactor: 1.2,
              //                                 style: TextStyle(
              //                                     color: Colors.white,
              //                                     fontWeight:
              //                                     FontWeight.bold),
              //                                 'Aesthetic'),
              //
              //                           ],
              //                         ),
              //                         Row(
              //                           children: const [
              //                             SizedBox(width: 5,),
              //                             Text(
              //                                 textScaleFactor: 0.9,
              //                                 style: TextStyle(
              //                                   color: Colors.white,),
              //                                 '22 pins'
              //                             ),
              //                             SizedBox(
              //                               width: 10,
              //                             ),
              //                             Text(
              //                                 textScaleFactor: 0.9,
              //                                 style: TextStyle(
              //                                   color: Colors.white38,),
              //                                 '2 weeks'
              //                             ),
              //
              //                           ],
              //                         )
              //                       ],
              //                     ),
              //                     const SizedBox(height: 10),
              //                     Column(
              //                       crossAxisAlignment:
              //                       CrossAxisAlignment.start,
              //                       children: [
              //                         ClipRRect(
              //                           borderRadius: BorderRadius.circular(20),
              //                           child: Image.asset(
              //                               "assets/images/tattoosExmpl.png"),
              //                         ),
              //                         const SizedBox(height: 5,),
              //                         Row(
              //                           children: const [
              //                             SizedBox(width: 5,),
              //                             Text(
              //                                 textScaleFactor: 1.2,
              //                                 style: TextStyle(
              //                                     color: Colors.white,
              //                                     fontWeight:
              //                                     FontWeight.bold),
              //                                 'Tattoos'),
              //
              //                           ],
              //                         ),
              //                         Row(
              //                           children: const [
              //                             SizedBox(width: 5,),
              //                             Text(
              //                                 textScaleFactor: 0.9,
              //                                 style: TextStyle(
              //                                   color: Colors.white,),
              //                                 '5 pins'
              //                             ),
              //                             SizedBox(
              //                               width: 10,
              //                             ),
              //                             Text(
              //                                 textScaleFactor: 0.9,
              //                                 style: TextStyle(
              //                                   color: Colors.white38,),
              //                                 '1 day.'
              //                             ),
              //
              //                           ],
              //                         )
              //                       ],
              //                     ),
              //                   ],
              //                 )
              //             ),
              //             const SizedBox(width: 10),
              //           ],
              //         )
              //       ],
              //     )
              // ),
            ],
          )),
    );
  }
}
