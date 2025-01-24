import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learning_git_flutter/model/women_product_model.dart';
import 'package:learning_git_flutter/routes.dart'; // Import the model

class wishListScreenDart extends StatefulWidget {
  @override
  wishListScreenDartState createState() => wishListScreenDartState();
}

class wishListScreenDartState extends State<wishListScreenDart> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Learning"),
        ),
        body:Center(
          child: Column(
            children: [
              Text('Add to wishlist page')
            ],
          ),
        )
    );
  }
}
