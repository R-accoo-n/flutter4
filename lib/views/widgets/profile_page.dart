import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter3/providers/favorites_provider.dart';
import 'package:flutter3/providers/theme_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'detail_post_page.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile>{

  List<Widget> generateColumns (BuildContext context){
    return List.generate(
        Provider.of<FavoriteProvider>(context, listen: true).totalAmount,
            (index) {
          return InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailPage(
                        Provider.of<FavoriteProvider>(context, listen: true)
                            .posts
                            .elementAt(index)
                            .imageSignature,
                        Provider.of<FavoriteProvider>(context, listen: true)
                            .posts
                            .elementAt(index)
                            .objectID,
                        Provider.of<FavoriteProvider>(context, listen: true)
                            .posts
                            .elementAt(index)
                            .objectLocation)));
              },
              child: Hero(
                tag: Provider.of<FavoriteProvider>(context, listen: true)
                    .posts
                    .elementAt(index)
                    .objectID,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                          Provider.of<FavoriteProvider>(context, listen: true)
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
                                    fontWeight: FontWeight.bold),
                                Provider.of<FavoriteProvider>(context, listen: true)
                                    .posts
                                    .elementAt(index)
                                    .imageSignature)),
                        const Expanded(
                            flex: 1,
                            child: Icon( Icons.more_horiz)),
                        const SizedBox(height: 10,)
                      ],
                    )
                  ],
                ),
              ));
        });
  }

  List<Widget> leftColumn = [];

  List<Widget> rightColumn = [];

  @override
  Widget build(BuildContext context) {
    List<Widget> objectsInColumns = generateColumns(context);

    leftColumn.removeRange(0, leftColumn.length);
    for(int i = 0; i < objectsInColumns.length; i+=2){
      leftColumn.add(objectsInColumns.elementAt(i));
    }

    rightColumn.removeRange(0, rightColumn.length);
    for(int i = 1; i < objectsInColumns.length; i+=2){
      rightColumn.add(objectsInColumns.elementAt(i));
    }

    return Scaffold(
      appBar: AppBar(
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
                backgroundImage: AssetImage('assets/images/sajad-nori-s1puI2BWQzQ-unsplash.jpg'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  textScaleFactor: 2,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  'Nickname'),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  textScaleFactor: 1,
                  style: TextStyle(
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
                        fontWeight: FontWeight.bold,
                      ),
                      'followers 0'),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.circle, size: 3),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                      textScaleFactor: 1,
                      style: TextStyle( fontWeight: FontWeight.bold),
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
                        fontWeight: FontWeight.bold,
                      ),
                      'Created'),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                      textScaleFactor: 1.1,
                      style: TextStyle(
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
                          color: Theme.of(context).backgroundColor,
                          height: 40,
                          child: Row(
                            children: const [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.search, ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                  textScaleFactor: 1.1,
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.italic),
                                  'Search for pins'),
                            ],
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: InkWell(
                        child: const Icon(
                          FontAwesomeIcons.sliders,
                        ),
                        onTap: () {
                          context.read<ThemeProvider>().changeCurrentTheme();
                        },
                      )),
                  const Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.add,
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
            ],
          )),
    );
  }
}
