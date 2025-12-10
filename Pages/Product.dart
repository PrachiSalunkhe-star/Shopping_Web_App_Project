import 'package:flutter/material.dart';
import 'package:newapp/common/CustomAppBar.dart';
import 'package:newapp/common/CustomBottomBar.dart';
import 'package:newapp/common/CustomDrawer.dart';
import 'package:newapp/models/ProductModel.dart';
import 'package:newapp/widgets/ProductCard.dart';
class ProductPage extends StatelessWidget {
   ProductPage({super.key});
  final List<Product> Products=[
    Product(name: "TV", imageurl: "https://images.unsplash.com/photo-1717295248230-93ea71f48f92?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHR2fGVufDB8fDB8fHww", price: 100000),
    Product(name: "Watch", imageurl: "https://images.unsplash.com/photo-1523170335258-f5ed11844a49?q=80&w=1180&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", price: 1499),
    Product(name: "Purse", imageurl: "https://images.unsplash.com/photo-1566150905458-1bf1fc113f0d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHB1cnNlfGVufDB8fDB8fHww", price: 999),
    Product(name: "Milk & Honey Book", imageurl: "https://images.unsplash.com/photo-1544947950-fa07a98d237f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Ym9va3xlbnwwfHwwfHx8MA%3D%3D", price: 500),
    Product(name: "Camera", imageurl: "https://images.unsplash.com/photo-1612548403247-aa2873e9422d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dmlkZW8lMjBjYW1lcmF8ZW58MHx8MHx8fDA%3D", price: 5000),
    Product(name: "Dress", imageurl: "https://images.unsplash.com/photo-1618932260643-eee4a2f652a6?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZHJlc3N8ZW58MHx8MHx8fDA%3D", price: 800),
    Product(name: "Shirt", imageurl: "https://images.unsplash.com/photo-1527719327859-c6ce80353573?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHRzaGlydHxlbnwwfHwwfHx8MA%3D%3D", price: 510),
    Product(name: "Ordinary Face Cream", imageurl: "https://images.unsplash.com/photo-1580870069867-74c57ee1bb07?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YmVhdXR5JTIwcHJvZHVjdHN8ZW58MHx8MHx8fDA%3D", price: 2600),
    Product(name: "Shirt", imageurl: "https://images.unsplash.com/photo-1527719327859-c6ce80353573?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHRzaGlydHxlbnwwfHwwfHx8MA%3D%3D", price: 510),
    Product(name: "Denial jackets", imageurl: "https://images.unsplash.com/photo-1658827977333-594d8c5b3803?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8amVhbnMlMjBqYWNrZXR8ZW58MHx8MHx8fDA%3D", price: 700),
    Product(name: "Cycle", imageurl: "https://images.unsplash.com/photo-1583467875263-d50dec37a88c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y3ljbGV8ZW58MHx8MHx8fDA%3D", price: 30000),
    Product(name: "Lip Glows", imageurl: "https://images.unsplash.com/photo-1615396899839-c99c121888b0?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHByb2R1Y3R8ZW58MHx8MHx8fDA%3D", price: 200),
    Product(name: "Glasses", imageurl: "https://images.unsplash.com/photo-1524255684952-d7185b509571?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Z2xhc3Nlc3xlbnwwfHwwfHx8MA%3D%3D", price: 4500),
    Product(name: "Heels", imageurl: "https://images.unsplash.com/photo-1590099033615-be195f8d575c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8aGVlbHN8ZW58MHx8MHx8fDA%3D", price: 1000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:CustomAppBar(title: 'Product',),
        drawer: CustomDrawer(),
       bottomNavigationBar: CustomBottomBar(currentIndex: 1),
       body: Padding(
              padding:EdgeInsets.all(12),
              child: GridView.builder(
                shrinkWrap: true,
                
                itemCount: Products.length,
               gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                childAspectRatio: 0.75,
                mainAxisSpacing: 10,
                ),
               itemBuilder: (context,index){
                return ProductCard(
                  product: Products[index],
                  color: const Color.fromARGB(255, 223, 206, 183),
                  );
               }
               ),
               ),
        );
  }
}