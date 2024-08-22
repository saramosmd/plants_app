

// ignore_for_file: prefer_const_constructors

import 'package:flower_app/pages/details_screen.dart';

import 'package:flower_app/provider/cart.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'model/item.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return     ChangeNotifierProvider(
      create: (context) {return Cart();},
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
       home: DetailsPage(product:  Item(name: "product8", price: 12.99, imgPath: "assets/images/8.webp"),),
      ),
    );
  }
}








