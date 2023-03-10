// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:recipie/recipe_model.dart';
import 'package:recipie/recipe_list_screen.dart';

class RecipeDetailScreen extends StatefulWidget {
  Recipe recipe;
  RecipeDetailScreen(this.recipe);

  @override
  State<StatefulWidget> createState() {
    return RecipeDetailState();
  }
}

class RecipeDetailState extends State<RecipeDetailScreen> {
  double servings = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.name),
      ),
      body: Column(
        children: [
          Image(
            image: AssetImage(widget.recipe.imageUrl),
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.recipe.ingredients.length,
              itemBuilder: (BuildContext context, int index) {
                final i = widget.recipe.ingredients[index];
                return Text("${i.quantity * servings} ${i.measure} ${i.name}",
                    style: TextStyle(fontSize: 20));
              },
            ),
          ),
          Slider(
            min: 1,
            max: 20,
            value: servings,
            divisions: 19,
            label: "$servings servings",
            onChanged: (double newValue) {
              setState(() {
                servings = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
// class RecipeDetailScreen extends StatefulWidget {
//   Recipe recipe;
//   RecipeDetailScreen(this.recipe);
//   @override
//   State<RecipeDetailScreen> createState() => _RecipeDetailScreenState();
// }

// class _RecipeDetailScreenState extends State<RecipeDetailScreen> {
//   double servings = 1;
//   @override
//   Widget build(BuildContext context) {
//     widget.recipe;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('recipe.name'),
//       ),
//       body: Column(
//         children: [
//           Image(
//             image: AssetImage(Recipe.imageurl),
//             width: double.infinity,
//             height: 300,),
//         ],
//       ),

//     );
//   }
// }