import 'package:flutter/material.dart';
import 'package:flutter3/models/favorites_model.dart';
import 'package:provider/provider.dart';


class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Consumer<FavoriteModel>(
            builder: (context, favorites, child){
              return Text('Total amount of favorite posts: ${favorites.totalAmount}');
            }
          )
      ),
    );
  }
}