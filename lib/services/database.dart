import 'package:practice_carousel/models/post.dart';
import 'package:practice_carousel/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});
  final CollectionReference postCollection =
      FirebaseFirestore.instance.collection('posts');
  final CollectionReference profileCollection =
      FirebaseFirestore.instance.collection('profiles');

  Future<void> updateUserData(AppUserData data) async {
    return await profileCollection.doc(data.uid).set({
      'name': data.name,
      'mobile': data.mobile,
      'idCardNumber': data.idCardNumber,
      'email': data.email,
      'address': data.userAddress
    });
  }

  List<Post> _postListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Post(
          name: doc.get('name'),
          date: doc.get('date'),
          message: doc.get('message'));
    }).toList();
  }

  AppUserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return AppUserData(
        uid: uid,
        name: snapshot.get('name'),
        mobile: snapshot.get('mobile'),
        idCardNumber: snapshot.get('idCardNumber'),
        email: snapshot.get('email'),
        userAddress: snapshot.get('userAddress'));
  }

  Stream<List<Post>> get posts {
    return postCollection.snapshots().map(_postListFromSnapshot);
  }

  Stream<AppUserData> get userData {
    return profileCollection.doc(uid).snapshots().map(_userDataFromSnapshot);
  }
}
