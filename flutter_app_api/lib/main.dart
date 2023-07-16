import 'package:flutter/material.dart';
import 'package:flutter_app_api/screen/productDetails.dart';
import 'package:flutter_app_api/screen/products.dart';
//import 'package:flutter_app_api/widgets%20u%20can%20use%20it%20in%20any%20screen/product_card.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductScreen(),
      routes: {//map is key-value
      ProductDetailsScreen.routyyyName:(_)=>ProductDetailsScreen()//_ its parameter context but will not use 
      },
    );
  }
}
////////////////////////////////////////////////////without  map "its properity in array for each index map take list of widgets "will be like
///
///body: Column(
//   children: [
//     ProductCard(
//       title: Products[0]['title'],
//       price: Products[0]['price'],
//       image: Products[0]['image'],
//     ),
//     ProductCard(
//       title: Products[1]['title'],
//       price: Products[1]['price'],
//       image: Products[1]['image'],
//     ),
//     ProductCard(
//       title: Products[2]['title'],
//       price: Products[2]['price'],
//       image: Products[2]['image'],
//     ),
//   ],
// )
///
///
