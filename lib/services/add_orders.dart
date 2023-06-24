import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<bool> placeOrder( String itemId, int quantity, String price) async {
  try{
    final firestore = FirebaseFirestore.instance;
    final userId = FirebaseAuth.instance.currentUser!.uid;
    // Create a new order document in the "orders" collection
    final orderRef = firestore.collection('orders').doc();
    await orderRef.set({
      'orderId': orderRef.id,
      'userId': firestore.doc('user/$userId'),
      'itemId': firestore.doc('database/$itemId'),
      'quantity': quantity,
      'price': price,
    });

    // Add the reference of the new order to the "orders" array in the user document
    final userRef = firestore.collection('user').doc(userId);
    await userRef.update({
      'orders': FieldValue.arrayUnion([firestore.doc('orders/${orderRef.id}')]),
    });
    return true;
  }
  catch(e){
    print(e);
    return false;
  }
}
