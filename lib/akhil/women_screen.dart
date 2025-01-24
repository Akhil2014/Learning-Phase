import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learning_git_flutter/model/women_product_model.dart';
import 'package:learning_git_flutter/routes.dart'; // Import the model

class WomenScreenDart extends StatefulWidget {
  @override
  _WomenScreenDartState createState() => _WomenScreenDartState();
}

class _WomenScreenDartState extends State<WomenScreenDart> {
  List<WomenProduct> _products = [];
  bool _isLoading = true;
  bool _isError = false;

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    final url = Uri.parse('https://fakestoreapi.com/products');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        setState(() {
          _products = data.map((json) => WomenProduct.fromJson(json)).toList();
          _isLoading = false;
        });
      } else {
        _isError = true;
        throw Exception('Failed to load products');
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      _isError = true;
      print('Error: $e');
    }
  }

  void addToWish(item) {
    print('akhilkhan ${item}');
   Navigator.pushNamed(context,  Routes.wishList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Women Section Page'),
      ),
      body: _isError ? Center(child: Text('Error')): _isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: _products.length,
        itemBuilder: (context, index) {
          final product = _products[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.network(
                product.image,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(product.title),
              subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
              trailing: ElevatedButton(onPressed: () => addToWish(product), child: Text('Add to WishList')),
            ),
          );
        },
      ),
    );
  }
}
