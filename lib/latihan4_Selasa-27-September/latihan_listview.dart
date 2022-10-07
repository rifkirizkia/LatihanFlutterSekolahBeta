import 'package:flutter/material.dart';
import 'package:pertemuan1/models/product.dart';

class LatihanListView extends StatefulWidget {
  const LatihanListView({Key key}) : super(key: key);

  @override
  State<LatihanListView> createState() => _LatihanListViewState();
}

class _LatihanListViewState extends State<LatihanListView> {
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
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
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
                      trailing: SizedBox(
                        width: 150,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  print(items[index].id);
                                  setState(() {
                                    final item = items[index].id;
                                    items.removeAt(index);
                                  });
                                },
                                icon: Icon(Icons.delete)),
                            ShoppingCartItemQty()
                          ],
                        ),
                      ),
                    ),
                    // ShoppingCartItemQty()
                  ],
                ),
              );

              // Container(
              //     color: Colors.teal.shade300,
              //     padding: EdgeInsets.all(40),
              //     child: Text(items[index]));
            }));
  }
}

class ShoppingCartItemQty extends StatefulWidget {
  const ShoppingCartItemQty({Key key}) : super(key: key);

  @override
  State<ShoppingCartItemQty> createState() => _ShoppingCartItemQtyState();
}

class _ShoppingCartItemQtyState extends State<ShoppingCartItemQty> {
  int _qty = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
        IconButton(
            onPressed: () {
              setState(() {
                if (_qty > 1) _qty--;
              });
            },
            icon: Icon(Icons.remove)),
        Text('$_qty'),
        IconButton(
            onPressed: () {
              setState(() {
                _qty++;
              });
            },
            icon: Icon(Icons.add)),
      ],
    );
  }
}
