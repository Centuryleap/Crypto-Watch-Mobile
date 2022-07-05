import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseApi {
  //this method is used for updating the watchlist to firebase
  
  static Future<String> addWatchlist(List<String> watchlist) async {
    final docTodo = FirebaseFirestore.instance.collection('watchCollection');

    await docTodo.doc('watcherman').set({'watchlist': watchlist});

    return docTodo.id;
  }
}
