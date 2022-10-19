import 'package:flutter/material.dart';
import 'package:pertemuan1/latihan5_Senin-3-Oktober/product_detail_page.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/product.dart';

class CatalogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
          id: 1,
          name: 'Shoe 1',
          description: 'This is a shoe',
          prices: 129000,
          images:
              'https://cdn.sweatband.com/Wilson_Tour_Vision_Mens_Tennis_Shoes_2_2000x2000.jpg'),
      Product(
          id: 2,
          name: 'Shoe 2',
          description: 'This is another shoe',
          prices: 129000,
          images:
              'https://cdn.sweatband.com/Wilson_Tour_Vision_Mens_Tennis_Shoes_2_2000x2000.jpg'),
      Product(
          id: 3,
          name: 'Shoe 3',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          prices: 129000,
          images:
              'https://cdn.sweatband.com/Wilson_Tour_Vision_Mens_Tennis_Shoes_2_2000x2000.jpg'),
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () {},
        ),
        title: Text('Catalog'),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
              //   return Shopping
              // }));
            },
            icon: Icon(Icons.shopping_cart),
            tooltip: 'Shopping Cart',
          )
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        padding: EdgeInsets.all(10),
        itemBuilder: (BuildContext context, int index) {
          return CatalogProductCard(
            product: products[index],
          );
        },
      ),
    );
  }
}

class CatalogProductCard extends StatelessWidget {
  const CatalogProductCard({Key key, this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return ProductDetailPage(
              product: product,
            );
          }));
        },
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.network(
              product.images,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Rp${product.prices}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.favorite_outline)),
                      ConstrainedBox(
                        constraints: BoxConstraints(minWidth: 200),
                        child: TextButton.icon(
                          onPressed: () {
                            Provider.of<Cart>(context, listen: false)
                                .addToCart(product);
                            Navigator.pushNamed(context, '/shopping_cart');
                          },
                          icon: Icon(Icons.shopping_cart_outlined),
                          label: Text('Add to Cart'),
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.tealAccent.shade700),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
