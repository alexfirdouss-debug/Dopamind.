import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dopamind/models/app_user.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> createUser(AppUser user) async {
    await _db.collection('users').doc(user.uid).set(user.toJson());
  }

  Future<AppUser?> getUser(String uid) async {
    var doc = await _db.collection('users').doc(uid).get();
    if (doc.exists) {
      return AppUser.fromJson(doc.data()!);
    }
    return null;
  }

  Future<void> updateUserPersonalization(
      String uid, Map<String, dynamic> data) async {
    await _db.collection('users').doc(uid).update({'personalization': data});
  }
}
