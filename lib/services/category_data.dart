import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Category {
  final String name;
  Category({required this.name});
}

class CategoryController extends GetxController {
  final firestore = FirebaseFirestore.instance;
  var categories = <Category>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadCategories();
  }

  void loadCategories() async {
    var snapshot = await firestore.collection('courses').get();
    if (snapshot.docs.isNotEmpty) {
      categories.assignAll(
        snapshot.docs.map((doc) => Category(
          name: doc['course']
        )).toList(),
      );
    }
  }
}