// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:recipie/recipe_detail_screen.dart';
import 'package:recipie/recipe_model.dart';
import 'recipe_model.dart';

class RecipeListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipes"),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (BuildContext context, int index) {
          final recipe = recipes[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return RecipeDetailScreen(recipe);
                  },
                ),
              );
            },
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  Image.asset(
                    recipe.imageUrl,
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      recipe.name,
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:recipie/recipe_detail_screen.dart';
// import 'package:recipie/recipe_model.dart';

// class RecipeListScreen extends StatefulWidget {

//   @override
//   State<RecipeListScreen> createState() => _RecipeListScreenState();
// }

// class _RecipeListScreenState extends State<RecipeListScreen> {

//   final recipes =  [
//     Recipe('assets/food_1.jpeg','fifir' , ''),
//     Recipe('assets/food_2.jpeg','fifir' ),
//     Recipe('assets/food_3.jpeg','fifir' ),
//     Recipe('assets/food_4.jpeg','fifir' ),
//     Recipe('assets/food_5.jpeg','fifir' ),
//     Recipe('assets/food_6.jpeg','fifir' ),    
//     ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:AppBar(
//         title: Text(
//           'Recipes',
//           style: TextStyle(
//             fontSize: 20,
//           ),
//           ),
//         backgroundColor: Colors.pink[200],
//         centerTitle: true,
//       ),
//       body: ListView .builder(
//         itemCount: recipes.length,
//         itemBuilder: ( BuildContext contex , int index) {
//           final recipe = recipes [index];
//             return GestureDetector(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(
//                   builder: (BuildContext context){
//                    return RecipeDetailScreen(recipe);

//                 }));
//               },
//               child: Card(
//                 elevation: 0,
//                 child: Column(
//                   children: [
//                     Image( 
//                       image: AssetImage(recipe['image']!),
//                       height: 300,
//                       width: double.infinity,
//                       fit: BoxFit.cover,
//                       ),
//                     SizedBox(height:8,),
//                     Text(
//                       recipe['name']!,
//                       style: TextStyle(
//                         fontSize: 18,
//                       ),
//                     ),
//                     SizedBox(height:8),
//                   ],
//                 ),
//               ),
//             );
//         }
//       ),
//     );
//   }
// }