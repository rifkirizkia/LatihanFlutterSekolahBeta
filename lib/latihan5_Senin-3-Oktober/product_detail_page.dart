import 'package:flutter/material.dart';
import 'package:pertemuan1/models/product.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key key, this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          tooltip: 'Back',
        ),
        title: Text('Product Details'),
      ),
      body: ListView(
        children: [
          Image.network(
            product.images,
            height: 300,
            fit: BoxFit.cover,
          ),
          ListTile(
            title: Text(
              'Rp${product.prices}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              product.name,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_outline),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          ListTile(
            title: Text(
              'Description',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              product.description,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          )
        ],
      ),
      persistentFooterButtons: [
        ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: TextButton.icon(
            onPressed: () {
              Provider.of<Cart>(context, listen: false).addToCart(product);
              Navigator.pushNamed(context, '/shopping_cart');
            },
            icon: Icon(Icons.shopping_cart_outlined),
            label: Text('Add to Cart'),
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.tealAccent.shade700,
            ),
          ),
        )
      ],
    );
  }
}
