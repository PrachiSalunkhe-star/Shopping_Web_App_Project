import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final categories=[
      {"name":"Shoes","icon":Icons.shopping_bag_outlined},
      {"name":"Watch","icon":Icons.watch},
      {"name":"Mobile","icon":Icons.phone_android},
      {"name":"Laptop","icon":Icons.laptop},
    ];
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context,index){
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 26,
                  backgroundColor: const Color.fromARGB(255, 252, 177, 64),
                  child: Icon(categories[index]["icon"] as IconData,
                  size: 30,
                  ) ,
                ),
                SizedBox(height: 5,),
                Text(categories[index]["name"]! as String),
              ],
            ),
          );
        }
        ),
    ) ;
  }
}