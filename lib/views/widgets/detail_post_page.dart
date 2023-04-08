import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/post.dart';
import '../../providers/favorites_provider.dart';


class DetailPage extends StatefulWidget {
  final String objectID;
  final String imageSignature;
  final String objectLocation;

  const DetailPage(this.imageSignature, this.objectID, this.objectLocation,
      {Key? key})
      : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState(objectID, imageSignature, objectLocation);
}

class _DetailPageState extends State<DetailPage>{
  final String objectID;
  final String imageSignature;
  final String objectLocation;


  _DetailPageState(this.objectID, this.imageSignature, this.objectLocation);

  @override
  Widget build(BuildContext context) {
    var favorites = context.read<FavoriteProvider>();

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
        child: Material(
          type: MaterialType.transparency,
          child:  Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 20,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(objectLocation),
                      ),
                      Row(
                        children: [
                          Expanded(
                              flex: 10,
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
                              flex: 1, child: Icon(color: Colors.white, Icons.more_horiz)
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                var postToAdd = Post(
                                    imageSignature, objectLocation, objectID);
                                if(!favorites.posts.contains(postToAdd)){
                                  favorites.add(postToAdd);
                                }
                                else {
                                  favorites.remove(postToAdd);
                                }
                              });
                            },
                            child: Expanded(
                                flex: 1,
                                child: favorites.posts.contains(Post(imageSignature, objectLocation, objectID)) ? const Icon(color: Colors.white, Icons.favorite) : const Icon(color: Colors.white, Icons.favorite_border,)
                            ),
                          )

                        ],
                      ),

                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
          ),
        ),
      ),
    );
  }
}