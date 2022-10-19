import 'package:flutter/material.dart';
import 'package:pertemuan1/latihan4_Selasa-27-September/latihan_listview.dart';
import 'package:pertemuan1/latihan5_Senin-3-Oktober/catalog.dart';
import 'package:pertemuan1/latihan5_Senin-3-Oktober/product_detail_page.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/product.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Product product = Product(
        id: 2,
        name: 'Shoe',
        description: 'This is a shoe',
        prices: 129000,
        images:
            'https://th.bing.com/th/id/OIP.lXfnUGH2TIipNHu9OLBEswHaHa?pid=ImgDet&w=1500&h=1500&rs=1');
    return MaterialApp(
      title: 'In The Store',
      theme: ThemeData(primarySwatch: Colors.teal),
      routes: {
        '/': (context) => CatalogPage(),
        '/shopping_cart': (context) => ShoppingCartPage()
      },
      // home: CatalogPage()
    );
  }
}

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Cart(),
    child: StoreApp(),
  ));
}
