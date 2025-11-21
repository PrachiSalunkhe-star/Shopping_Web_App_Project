import 'package:flutter/material.dart';
import 'package:newapp/models/ProductModel.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final Color color;
  const ProductCard({super.key,required this.product,required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius:BorderRadiusDirectional.circular(10) ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius:BorderRadius.vertical(
                top: Radius.circular(12)
              ),
              child: Image.network(product.imageurl,
              height: 110,
              width: double.infinity,///for card suitable
              fit: BoxFit.cover,
              ),

            ),
           const SizedBox(height: 10,),
           Text(product.name,
           style: TextStyle(
            fontWeight:FontWeight.bold,
             ),
             ),
            const SizedBox(height: 10,),
            Text(
              "₹${product.price}",//ctl+alt+4 for ruppes symbol
              style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 16
              ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){}, 
              child: Text('Add to Cart',
              style: TextStyle(
               color: Colors.black,
               fontWeight: FontWeight.bold,
               fontSize:15
                 ),),
             style: ElevatedButton.styleFrom(
                backgroundColor:const Color.fromARGB(255, 220, 120, 90),
                ),)
          ],
        ),
        
    );
  }
}