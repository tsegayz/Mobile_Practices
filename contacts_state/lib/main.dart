// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, unused_local_variable, avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Catalog(),
        routes: {
          "/cart": (context) => Cart(),
          "/catalog": (context) => Catalog(),
        },
      ),
    );
  }
}

class CartModel extends ChangeNotifier {
  final List<String> _itemsList = [];

  List<String> get itemsList => _itemsList;

  int get totalPrice => _itemsList.length * 42;

  add(String name) {
    _itemsList.add(name);
    notifyListeners();
  }

  remove(String name) {
    _itemsList.removeWhere((element) => element == name);
    notifyListeners();
  }

  addPrice(int price) {
    int sum = 0;
    sum = sum + price;
    notifyListeners();
  }

  removePrice(int price) {
    price = totalPrice - price;
    notifyListeners();
  }
}

class Catalog extends StatelessWidget {
  List<Color> colors = [
    Color.fromARGB(255, 127, 194, 248),
    Color.fromARGB(255, 154, 245, 201),
    Color.fromARGB(255, 245, 119, 119),
    Color.fromARGB(255, 253, 134, 174),
    Color.fromARGB(255, 232, 133, 250)
  ];

  ListTile eachTile(CartModel items, String name, int index, int price) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(color: Colors.white),
      ),
      leading: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
            color: colors[index % 5],
            borderRadius: BorderRadius.all(Radius.circular(2))),
      ),
      trailing: Column(
        children: [
          IconButton(
            icon: (items._itemsList.contains(name))
                ? Icon(
                    Icons.check,
                    color: Colors.white,
                  )
                : Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
            onPressed: () {
              if (items._itemsList.contains(name)) {
                items.remove(name);
                items.removePrice(price);
              } else {
                items.add(name);
                items._itemsList.forEach((item) {
                  items.addPrice(price);
                });
              }
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    CartModel item = Provider.of<CartModel>(context);
    final startingPrice = item.totalPrice;

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 8,
              ),
              Text("Catalog",
                  style: TextStyle(
                    fontSize: 25,
                  )),
              GestureDetector(
                onTap: () => Navigator.of(context).pushNamed("/cart"),
                child: Icon(
                  Icons.shopping_cart,
                  size: 25,
                ),
              )
            ],
          ),
        ),
        body: Container(
            color: Colors.black,
            child: Expanded(
              child: Padding(
                  padding:
                      const EdgeInsets.only(top: 18.0, left: 30, right: 50),
                  child: Consumer(
                    builder:
                        (BuildContext context, CartModel value, Widget? child) {
                      return ListView(
                        children: [
                          eachTile(item, "Code Smell", 0, 100),
                          eachTile(item, "Control Flow", 1, 90),
                          eachTile(item, "Interpreter", 2, 78),
                          eachTile(item, "Sprint", 3, 50),
                          eachTile(item, "Recursion", 4, 120)
                        ],
                      );
                    },
                  )),
            )));
  }
}

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CartModel item = Provider.of<CartModel>(context);
    final startingPrice = item.totalPrice;

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          title: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 120,
              ),
              Text("Cart",
                  style: TextStyle(
                    fontSize: 25,
                  )),
            ],
          ),
        ),
        body: Container(
          color: Colors.blue,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 15),
                  child: Consumer(
                    builder:
                        (BuildContext context, CartModel value, Widget? child) {
                      return ListView.builder(
                        itemCount: value._itemsList.length + 1,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return Padding(
                              padding: EdgeInsets.all(40),
                              child: Text(
                                "The chosen list: ",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            );
                          } else {
                            return Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.white,
                                  size: 32,
                                ),
                                Text(
                                  value.itemsList[index - 1],
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            );
                          }
                        },
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 400,
                  decoration: BoxDecoration(
                      border: Border(
                    top: BorderSide(color: Colors.white, width: 3),
                  )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Consumer(
                        builder: (BuildContext context, CartModel value,
                            Widget? child) {
                          if (value._itemsList.isEmpty) {
                            return Padding(
                              padding: EdgeInsets.all(40),
                              child: Text(
                                "\$ 0",
                                style: TextStyle(
                                    fontSize: 60, color: Colors.white),
                              ),
                            );
                          } else {
                            return Text("\$ ${value.totalPrice.toString()}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 60,
                                    fontWeight: FontWeight.bold));
                          }
                        },
                      ),
                      Container(
                        height: 45,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Center(
                          child: Text(
                            "Buy",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
