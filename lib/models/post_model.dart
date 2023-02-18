import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String uid;
  final String description;
  final String username;
  final String postId;
  final DateTime datePublished;
  final String profileImage;
  final String postUrl;
  final likes;

  const Post(
      {required this.uid,
      required this.description,
      required this.username,
      required this.postId,
      required this.datePublished,
      required this.profileImage,
      required this.postUrl,
      required this.likes});

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post(
        uid: snapshot['uid'],
        description: snapshot['description'],
        username: snapshot['username'],
        postId: snapshot['postId'],
        datePublished: snapshot['datePublished'],
        profileImage: snapshot['profileImage'],
        postUrl: snapshot['postUrl'],
        likes: snapshot['likes']);
  }

  Map<String, dynamic> toJson() => {
        "description": description,
        "uid": uid,
        "likes": likes,
        "username": username,
        "postUrl": postUrl,
        "postId": postId,
        "profileImage": profileImage,
        "datePublished": datePublished,
      };
}
