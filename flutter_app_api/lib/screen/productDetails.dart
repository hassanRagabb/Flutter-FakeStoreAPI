import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});
  static String routyyyName = "/productDetails";

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int quantity = 1;
  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    setState(() {
      if (quantity > 1) {
        quantity--;
      }
    });
  }
bool isFavorite = false;
void toggleFavorite() {
  setState(() {
    isFavorite = !isFavorite;
  });
}

  @override
  Widget build(BuildContext context) {
      final product=ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          product["title"]  , //witout as map line 8 will be error coz its key value
          style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
        ),backgroundColor: Color.fromARGB(255, 35, 6, 202),
          actions: [
    IconButton(
      onPressed: toggleFavorite,
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: isFavorite ? Colors.red : null,
      ),
    ),
  ],
        ),
        
      
      body: Column(
        children: [
          Image.network(product["image"],height: 300,width: 200,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(product["description"]),
          ),
          Text("Price: \$${product["price"]}",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: decrementQuantity,
                icon: Icon(Icons.remove),
              ),
              Text(
                quantity.toString(),
                style: TextStyle(fontSize: 20),
              ),
              IconButton(
                onPressed: incrementQuantity,
                icon: Icon(Icons.add),
              ),
            ],
          ),IconButton(
        onPressed: toggleFavorite,
          icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.red : null,
                  ),
                  ),
            ElevatedButton(
                              onPressed: () {
                                      // Perform action when Buy Now button is pressed
                                  },child: Text("Buy Now"),
                          ),
        ],
      ),
    );
  }
}
