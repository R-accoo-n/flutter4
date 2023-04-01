import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter3/models/post.dart';


class FavoriteModel extends ChangeNotifier{
  final List<Post> _posts = [];

  UnmodifiableListView<Post> get posts => UnmodifiableListView(_posts);

  int get totalAmount => _posts.length;

  void add(Post post) {
    _posts.add(post);
    notifyListeners();
  }

  void removeAll() {
    _posts.clear();
    notifyListeners();
  }

  void remove(Post post){
    _posts.remove(post);
  }
}