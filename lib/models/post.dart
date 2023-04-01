class Post {
  final String imageSignature;
  final String objectLocation;
  final String objectID;

  Post(this.imageSignature, this.objectLocation, this.objectID);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Post &&
          runtimeType == other.runtimeType &&
          objectID == other.objectID;

  @override
  int get hashCode => objectID.hashCode;
}