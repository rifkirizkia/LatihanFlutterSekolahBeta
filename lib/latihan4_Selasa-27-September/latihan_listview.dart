import 'package:flutter/material.dart';
import 'package:pertemuan1/models/product.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({Key key}) : super(key: key);

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  final List<Product> items = [
    Product(
      id: 1,
      name: 'Item 1',
      prices: 10000,
      images:
          'https://cdn.sweatband.com/Wilson_Tour_Vision_Mens_Tennis_Shoes_2_2000x2000.jpg',
    ),
    Product(
      id: 2,
      name: 'Item 2',
      prices: 70000,
      images:
          'https://th.bing.com/th/id/OIP.a0S5t8mYXIJwxHZrZUVRgQHaHa?pid=ImgDet&w=1365&h=1365&rs=1',
    ),
    Product(
      id: 3,
      name: 'Item 3',
      prices: 35000,
      images:
          'https://th.bing.com/th/id/OIP.lXfnUGH2TIipNHu9OLBEswHaHa?pid=ImgDet&w=1500&h=1500&rs=1',
    ),
    Product(
      id: 4,
      name: 'Item 4',
      prices: 20000,
      images:
          'https://cdn.sweatband.com/yonex_sht_power_cushion_cefiro_mens_tennis_shoes_ss17_yonex_sht_power_cushion_cefiro_mens_tennis_shoes_-_greyred_2000x2000.jpg',
    ),
    Product(
      id: 5,
      name: 'Item 5',
      prices: 1320000,
      images:
          'https://cdn.sweatband.com/Wilson_Tour_Vision_Mens_Tennis_Shoes_2_2000x2000.jpg',
    ),
    Product(
      id: 6,
      name: 'Item 6',
      prices: 410000,
      images:
          'https://th.bing.com/th/id/OIP.a0S5t8mYXIJwxHZrZUVRgQHaHa?pid=ImgDet&w=1365&h=1365&rs=1',
    ),
    Product(
      id: 7,
      name: 'Item 7',
      prices: 100000,
      images:
          'https://cdn.sweatband.com/yonex_sht_power_cushion_cefiro_mens_tennis_shoes_ss17_yonex_sht_power_cushion_cefiro_mens_tennis_shoes_-_greyred_2000x2000.jpg',
    ),
    Product(
      id: 8,
      name: 'Item 8',
      prices: 74000,
      images:
          'https://th.bing.com/th/id/OIP.lXfnUGH2TIipNHu9OLBEswHaHa?pid=ImgDet&w=1500&h=1500&rs=1',
    ),
    Product(
      id: 9,
      name: 'Item 9',
      prices: 98000,
      images:
          'https://cdn.sweatband.com/Wilson_Tour_Vision_Mens_Tennis_Shoes_2_2000x2000.jpg',
    ),
    Product(
      id: 10,
      name: 'Item 10',
      prices: 19200,
      images:
          'https://th.bing.com/th/id/OIP.a0S5t8mYXIJwxHZrZUVRgQHaHa?pid=ImgDet&w=1365&h=1365&rs=1',
    ),
    Product(
      id: 11,
      name: 'Item 11',
      prices: 10000,
      images:
          'https://th.bing.com/th/id/OIP.lXfnUGH2TIipNHu9OLBEswHaHa?pid=ImgDet&w=1500&h=1500&rs=1',
    ),
    Product(
      id: 12,
      name: 'Item 12',
      prices: 10000,
      images:
          'https://cdn.sweatband.com/yonex_sht_power_cushion_cefiro_mens_tennis_shoes_ss17_yonex_sht_power_cushion_cefiro_mens_tennis_shoes_-_greyred_2000x2000.jpg',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ShoppingCartPage')),
      body: Consumer<Cart>(
          builder: (BuildContext context, Cart cart, Widget child) {
        return ListView.builder(
            itemCount: cart.items.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(items[index].name),
                      leading: Image.network(
                        items[index].images,
                        height: 56,
                        width: 56,
                        fit: BoxFit.cover,
                      ),
                      subtitle: Text(
                        'Rp${items[index].prices}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      // trailing: SizedBox(
                      //   width: 150,
                      //   child: Row(
                      //     children: [
                      //       IconButton(
                      //           onPressed: () {
                      //             print(items[index].id);
                      //             setState(() {
                      //               final item = items[index].id;
                      //               items.removeAt(index);
                      //             });
                      //           },
                      //           icon: Icon(Icons.delete)),
                      //     ],
                      //   ),
                      // ),
                    ),
                    ShoppingCartItemQty(
                      index: index,
                    )
                  ],
                ),
              );

              // Container(
              //     color: Colors.teal.shade300,
              //     padding: EdgeInsets.all(40),
              //     child: Text(items[index]));
            });
      }),
      bottomNavigationBar: ShoppingCartTotal(),
    );
  }
}

class ShoppingCartTotal extends StatelessWidget {
  const ShoppingCartTotal({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.tealAccent.shade400))),
      child: Consumer<Cart>(
        builder: (context, cart, child) {
          return ListTile(
            title: const Text(
              'Total Price',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
            subtitle: Text(
              'Rp${cart.totalPrice}',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            trailing: ConstrainedBox(
              constraints: BoxConstraints(minWidth: 150),
              child: TextButton(
                child: Text('Checkout'),
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: cart.items.isNotEmpty
                        ? Colors.tealAccent.shade700
                        : Colors.grey.shade400),
                onPressed: cart.items.isNotEmpty ? () {} : null,
              ),
            ),
          );
        },
      ),
    );
  }
}

class ShoppingCartItemQty extends StatelessWidget {
  const ShoppingCartItemQty({Key key, this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
            onPressed: () {
              Provider.of<Cart>(context, listen: false).removeFromCart(index);
            },
            icon: Icon(Icons.delete)),
        IconButton(
            onPressed: () {
              Provider.of<Cart>(context, listen: false).decItemQty(index);
            },
            icon: Icon(Icons.remove)),
        Selector<Cart, int>(
            builder: ((BuildContext context, int qty, Widget child) {
          return Text('$qty');
        }), selector: (BuildContext context, Cart cart) {
          return cart.items[index].qty;
        }),
        IconButton(
            onPressed: () {
              Provider.of<Cart>(context, listen: false).incItemQty(index);
            },
            icon: Icon(Icons.add)),
      ],
    );
  }
}
