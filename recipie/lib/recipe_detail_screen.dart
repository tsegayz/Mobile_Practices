// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:recipie/recipe_model.dart';
import 'package:recipie/recipe_list_screen.dart';

class RecipeDetailScreen extends StatefulWidget {
  Recipe recipe;
  RecipeDetailScreen(this.recipe);
  @override
  State<RecipeDetailScreen> createState() => _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends State<RecipeDetailScreen> {
  double servings = 1;
  @override
  Widget build(BuildContext context) {
    widget.recipe;
    return Scaffold(
      appBar: AppBar(
        title: Text('recipe.name'),
      ),
      body: Column(
        children: [
          Image(
            image: AssetImage(Recipe.imageurl),
            width: double.infinity,
            height: 300,),
        ],
      ),

    );
  }
}