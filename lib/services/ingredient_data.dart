import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Ingredient {
  final String name;
  final int price;

  Ingredient({required this.name, required this.price});
}

class IngredientController extends GetxController {
  var ingredients = <Ingredient>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Here, we load our ingredient data from Firestore and store it in our controller
    FirebaseFirestore.instance.collection('ingredient').get().then((snapshot) {
      ingredients.value = snapshot.docs.map((doc)
      {
        print(doc['Ingredient']);
                Ingredient(
                    name: doc['Ingredient'], price: int.parse(doc['Price']));
              }).toList() as List<Ingredient>;
    });
  }

  int getPrice(String name) {
    // Here, we define a method to get the price of an ingredient by its name
    return ingredients.firstWhere((ingredient) => ingredient.name.capitalize == name.capitalize).price;
  }
}

class Item {
  final String name;
  final List<dynamic> ingredients;
  final IngredientController ingredientController = Get.put(IngredientController());

  Item({required this.name, required this.ingredients});

  double get price {
    // Here, we calculate the total price of the product by summing up the prices of its ingredients
    return ingredients.fold(0, (sum, ingredient) => sum + ingredientController.getPrice(ingredient));
  }
}