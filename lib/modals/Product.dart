import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final String imgUrl;
  final num price;
  final color;

  Product(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.imgUrl,
      required this.color});
}

class ProductDataProvider with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'p0',
      title: 'Ямайка Саур',
      description: 'Делается методом шейк',
      price: 180,
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1exqp10a7tik0UqqhOelnYxTslMuJge1Ktg&usqp=CAU',
      color: '0xFFF8BBD0',
    ),
    Product(
      id: 'p1',
      title: 'ЕстВест',
      description: 'Делается методом шейк',
      price: 180,
      imgUrl: 'https://event.ru/wp-content/uploads/2014/03/13.jpg',
      color: '0xFFFFF59D',
    ),
    Product(
      id: 'p2',
      title: 'Дайкири',
      description: 'Делается методом шейк',
      price: 220,
      imgUrl:
          'https://upload.wikimedia.org/wikipedia/commons/f/fd/Classic_Daiquiri_in_Cocktail_Glass.jpg',
      color: '0xFFCCFF90',
    ),
    Product(
      id: 'p3',
      title: 'root говнюк',
      description: 'Делается методом шейк',
      price: 220,
      imgUrl: 'https://i.ibb.co/jGL70hM/image.jpg',
      color: '0xFFBBDEFB',
    ),
  ];

  UnmodifiableListView<Product> get items => UnmodifiableListView(_items);

  Product getElementById(String id) =>
      _items.singleWhere((value) => value.id == id);
}
