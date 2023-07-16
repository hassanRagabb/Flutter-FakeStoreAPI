import 'package:flutter/material.dart';
import 'package:flutter_app_api/screen/productDetails.dart';

class ProductCard extends StatelessWidget {
  //const ProductCard({super.key});
  final String title; //readonly not change b3d kda
  final num price; //readonly not change b3d kda
  final image;
  ProductCard({required this.title, required this.price, this.image});

  @override
  Widget build(BuildContext context) {
    // return GestureDetector(
    //   onTap: () {
    //     //push scrren have name                                     arguments if product have many properites u must send needed properities not the all properities of obj
    //     Navigator.of(context).pushNamed(ProductDetailsScreen.routyyyName,arguments:{"title": title,"price": price,...});//declaired in main and routyyy declaired in productDetailsScreen need here send arguments but description not here its in products screen so send obj from product screen
    //   },
      //child: Card(
        return Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Image.network(
                  image,
                  width:
                      70, //not height because fi card satreen and another may one line
                  height: 70,
                  //fit: BoxFit.contain, if image akbr mn width and height will be apper 7lw in this not streached
                ),
              ),
              Flexible(
                //column have data kbera so need if line kber s2smo
                child: Column(
                    mainAxisSize: MainAxisSize
                        .min, //by defualt column take 100% from  hieght big so we need to min it without it image will be center first column
                    crossAxisAlignment:
                        CrossAxisAlignment.start, //horizontal like    name
                    //price           same start for name and price
                    children: [
                      Text(title),
                      Text(
                        price.toString() + " EGY",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontStyle: FontStyle.italic),
                      )
                    ]),
              )
            ],
          ),
        ),
      );
    
  }

  //return productcard state arrow function
}
