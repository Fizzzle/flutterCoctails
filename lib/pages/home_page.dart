import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:coctails_app/modals/Product.dart';

import '../widgets/catalog.dart';
import '../widgets/item_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<ProductDataProvider>(context);

    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height - 15,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.all(10.0),
            children: <Widget>[
              Container(
                child: ListTile(
                  title: Text(
                    'Коктейли Агностик',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Ходовые',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  trailing: Icon(Icons.connecting_airports),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                height: 430,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productData.items.length,
                  itemBuilder: (context, int index) =>
                      ChangeNotifierProvider.value(
                    value: productData.items[index],
                    child: ItemCard(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Летние коктейли',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ...productData.items.map((value) {
                return CatalogListTile(imgUrl: value.imgUrl);
              }).toList(),
              Text(
                'Классические коктейли',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),

      // !- Ботом бар
    );
  }
}
