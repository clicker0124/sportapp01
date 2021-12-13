import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

class CategoryService {
  FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  String ref = 'categories';

  void createCategory(String name) {
    var uid = Uuid();
    String categoryId = uid.v1();
    _fireStore.collection(ref).doc(categoryId).set({
      'category': name,
    });
  }

  Future<List<DocumentSnapshot>> getCategories() async {
    return _fireStore.collection(ref).get().then((snaps) {
      return snaps.docs;
    });
  }
}
