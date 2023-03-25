import 'package:flutter/material.dart';


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