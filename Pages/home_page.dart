import 'package:flutter/material.dart';
import 'package:newapp/common/CustomAppBar.dart';
import 'package:newapp/common/CustomBottomBar.dart';
import 'package:newapp/common/CustomDrawer.dart';
import 'package:newapp/models/ProductModel.dart';
import 'package:newapp/widgets/Category_Widget.dart';
import 'package:newapp/widgets/Curousel_Widget.dart';
import 'package:newapp/widgets/ProductCard.dart';
class HomePage extends StatelessWidget {
   HomePage({super.key});
  final List<Product> Products=[
    Product(name: "Shoes", imageurl: "https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHNob2VzfGVufDB8fDB8fHww", price: 899),
    Product(name: "Watch", imageurl: "https://images.unsplash.com/photo-1524805444758-089113d48a6d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8d2F0Y2h8ZW58MHx8MHx8fDA%3D", price: 1499),
    Product(name: "Mobile", imageurl: "https://images.unsplash.com/photo-1589492477829-5e65395b66cc?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fG1vYmlsZSUyMHBob25lfGVufDB8fDB8fHww", price: 9999),
    Product(name: "Laptop", imageurl: "https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGxhcHRvcHxlbnwwfHwwfHx8MA%3D%3D", price: 40000)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:CustomAppBar(title: 'Home',),
        drawer: CustomDrawer(),
       bottomNavigationBar: CustomBottomBar(currentIndex: 0),
       body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //carsouel slider
            const SizedBox(height: 10,),
            const HomeCurousel(),
            SizedBox(height: 10,),

            //categoaries
            Padding(
              padding: const EdgeInsets.only(left: 12,top:10),
              child: Center(
                child: Text("Categories",
                style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 20,),
            const CategoryWidget(),
            //product section
              Padding(
              padding: const EdgeInsets.only(left: 12,top:10),
              child: Center(
                child: Text("Product",
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold),),
              ),
            ),

            Padding(
              padding:EdgeInsets.all(12),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),//do not scroll
                itemCount: Products.length,
               gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                childAspectRatio: 0.75,
                mainAxisSpacing: 10,
                ),
               itemBuilder: (context,index){
                return ProductCard(
                  product: Products[index
                  ],
                  color: const Color.fromARGB(255, 215, 210, 210),);
               }
               ),
               ),
          ],
        ),
       ),
        );
  
  }
}