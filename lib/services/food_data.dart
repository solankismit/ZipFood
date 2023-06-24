import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

class Food {
  String? id;
  // int? srno;
  String? recipeName;
  // String? translatedRecipeName;
  List<dynamic>? ingredients;
  // String? translatedIngredients;
  String? prepTimeInMins;
  String? cookTimeInMins;
  // int? totalTimeInMins;
  // int? servings;
  // String? cuisine;
  String? course;
  String? diet;
  String? instructions;
  // String? translatedInstructions;
  String? uRL;
  String? imageURL;
  String? region;
  String? state;

  Food(
      {this.id,
      this.recipeName,
      this.ingredients,
      this.prepTimeInMins,
      this.cookTimeInMins,
      this.course,
      this.diet,
      this.instructions,
      this.uRL,
      this.imageURL,
      this.region,
      this.state});
}
//
// class FoodService {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//
//   Future<List<Food>> getFoodsByCategory(String category) async {
//     List<Food> foods = [];
//
//     final snapshot = await _firestore
//         .collection('foods')
//         .where('category', isEqualTo: category)
//         .get();
//
//     snapshot.docs.forEach((doc) async {
//       FirebaseStorage storage = FirebaseStorage.instance;
//       String name = doc['recipeName'];
//       Reference ref = storage.ref().child('gs://zipfood-432a4.appspot.com/'+name+'.jpg');
//       String imageUrl = await ref.getDownloadURL();
//       final food = Food(
//           recipeName: doc['name'],
//           ingredients: doc['ingredients'],
//           prepTimeInMins: doc['prep_time'],
//           cookTimeInMins: doc['cook_time'],
//           course: doc['course'],
//           diet: doc['diet'],
//           region: doc['region'],
//           state: doc['state'],
//           uRL: doc['recipe'],
//           imageURL: imageUrl
//       );
//       foods.add(food);
//     });
//
//     return foods;
//   }
// }

class FoodController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  RxList<Food> foods = RxList<Food>([]);
  RxList<Food> foodsByDoc = RxList<Food>([]);
  bool getFoodsByDoc(List<DocumentReference> refs
      ){
    List<Food> foodList = [];
    refs.forEach((ref) async {
      final snapshot = await ref.get();
      final food = Food(
          recipeName: snapshot['name'],
          ingredients: snapshot['ingredients'],
          prepTimeInMins: snapshot['prep_time'],
          cookTimeInMins: snapshot['cook_time'],
          course: snapshot['course'],
          diet: snapshot['diet'],
          region: snapshot['region'],
          state: snapshot['state'],
          uRL: snapshot['recipe'],
          imageURL: snapshot['imageURL']
      );
      foodList.add(food);
    });
    foodsByDoc.value = foodList;
    return true;
  }
  Future<bool> getFoodsByCategory(String category) async {
    List<Food> foodList = [];

    //TESTINg
    final snp = await _firestore
        .collection('database')
        .doc('0By3Vp4XkLas4UOb373s')
        .get();
    //print one document details
    print(snp.data());
    /////////////
    print(category.toLowerCase());
    final snapshot = await _firestore
        .collection('database')
        .where('course', isEqualTo: category.toLowerCase())
        .get();

    snapshot.docs.forEach((doc) async {
      // Get the current user.
//       final user = FirebaseAuth.instance.currentUser;
//
// // Get the ID token for the user.
//       final idTokenResult = await user?.getIdTokenResult();
//
// // Use the ID token to get an instance of FirebaseStorage.
//       if(idTokenResult == null){
//         print('idTokenResult is null');
//       }
//       else{
//         print('idTokenResult is not null');
//       }
//       final storage = FirebaseStorage.instanceFor(
//         app: Firebase.app(),
//         );
//       String name = doc['name'];
//       Reference ref = storage.ref().child(name + '.jpg');
//       String imageUrl = await ref.getDownloadURL();
      final food = Food(
          id: doc.id,
          recipeName: doc['name'],
          ingredients: doc['ingredients'],
          prepTimeInMins: doc['prep_time'],
          cookTimeInMins: doc['cook_time'],
          course: doc['course'],
          diet: doc['diet'],
          region: doc['region'],
          state: doc['state'],
          uRL: doc['recipe'],
          imageURL: doc['name'].toLowerCase());
      foodList.add(food);
    });

    foods.assignAll(foodList);
    print(foods);
    return true;
  }
}
