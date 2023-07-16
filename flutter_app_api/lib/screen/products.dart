import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app_api/screen/productDetails.dart';

import '../widgets u can use it in any screen/product_card.dart';
import 'package:http/http.dart' as http;

class ProductScreen extends StatefulWidget {
  @override
  State<ProductScreen> createState() =>
      _ProductScreenState(); //return productscreen state arrow function
}

class _ProductScreenState extends State<ProductScreen> {
//  const ProductScreen({super.key});
  List Products = [];

  // List Products = [
  //   //array of objects api
  //   {
  //     "title": "title is here",
  //     "price": 10,
  //     "image": "assets/images/8.webp",
  //   },
  //   {
  //     "title": "title is here",
  //     "price": 50,
  //     "image": "assets/images/6.webp",
  //   },
  //   {
  //     "title": "title is here",
  //     "price": 90,
  //     "image": "assets/images/7.webp",
  //   }
  // ];

  @override
  Widget build(BuildContext context) {
    // var url = Uri.https(
    //     'https://fakestoreapi.com/products'); //title price image categpry
    var url = Uri.https('fakestoreapi.com', '/products');

    http.get(url).then((res) {
      var result = jsonDecode(res
          .body); // res is string cant fit into array so  transform it to json array
      //print(res.body);
      setState(() {
        Products = result;
      });
    });

    return Scaffold(
        backgroundColor:
            Color.fromARGB(255, 110, 164, 235), //for kolo under appbar

        appBar: AppBar(
          title: Text(
            "Api fake store",
            style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
          ),
          backgroundColor: Color.fromARGB(255, 35, 6, 202),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: Products.map((product) {
                // is a parameter product and map take list of widgets
                return GestureDetector(
                  onTap: () {       //push scrren have name
                Navigator.of(context).pushNamed(ProductDetailsScreen.routyyyName,arguments: product);}, //if product have many properites u must send needed properities not the all properities of obj
                  child: ProductCard(
                      title: product[
                          'title'], //not key value its named parameter title is declaired in product_card its a properities in class its extend from widget so its widget
                      price: product[
                          'price'], //price properities in class product_card its extend from widget so its widget
                      image: product[
                          'image']),
                ); // we have 3 obj from widgets in line 9 products
              }).toList(),
            ),
          ),
        ));
  }
}

  //map




  //map need list of widgets so each index in products is a widget u can make for loop and not use map
// List<Widget> prodWidget = []; chat gpt

// for (var product in products) {
//   prodWidget.add(
//     ProductCard(
//       title: product["title"],
//       price: product["price"],
//     ),
//   );
// }
  //u can also do it as for loop min 1:14 part1
  // List<Widget> prodWidget = [];
  // for( var i=0;i<Products.length();i++){
  //   prodWidget.add(ProductCard(title: title, price: price))
  // } end map
  //const myapp({super.key});


// } end map