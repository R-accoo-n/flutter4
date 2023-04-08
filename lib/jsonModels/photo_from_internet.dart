import 'dart:convert';

class PhotoFromInternet {
  late String photoAddress;

  PhotoFromInternet({required this.photoAddress});

  factory PhotoFromInternet.fromJson(Map<String, dynamic> json) {
    return PhotoFromInternet(
        photoAddress: json['PhotoAddress'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['PhotoAddress'] = photoAddress;
    return data;
  }


}