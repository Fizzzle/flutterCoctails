import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../modals/Product.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);

    return Container(
      width: 150,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Color(int.parse(product.color)),
      ),
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage(product.imgUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                  child: Text('${product.title}',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold))),
            ],
          ),
        ],
      ),
    );
  }
}
