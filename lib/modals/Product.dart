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
      description:
          'Вискарик \n Ром Светлый - 30гр \n Ром Темный - 20гр \n Сироп банан - 20 \n Сок ананас - 60 \n',
      price: 180,
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1exqp10a7tik0UqqhOelnYxTslMuJge1Ktg&usqp=CAU',
      color: '0xFFF8BBD0',
    ),
    Product(
      id: 'p1',
      title: 'ЕстВест',
      description:
          'Колинз \n Текила - 50гр \n Сироп Кокос - 20 \n Клубник пюре - 20гр \n Сок ананас - 60 \n',
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
      title: 'Денис Жопашник',
      description: 'Оскорбительно хорош',
      price: 999,
      imgUrl:
          'https://scontent-lhr8-2.cdninstagram.com/v/t51.2885-15/298266632_809791803723316_2287725994285567040_n.webp?stp=dst-jpg_e35&cb=2d435ae8-d7f9aae8&_nc_ht=scontent-lhr8-2.cdninstagram.com&_nc_cat=104&_nc_ohc=2ucKB2HqBqgAX-Jq7S-&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=MjkwMTE2NzA5MTYxMTM5MDEzNg%3D%3D.2-ccb7-5&oh=00_AT_vXgBhAUOKG8vRLuJbP6YGGluuil0A7Z0EIjyHXhfdnw&oe=62FB3252&_nc_sid=30a2ef',
      color: '0xFFBBDEFB',
    ),
  ];

  UnmodifiableListView<Product> get items => UnmodifiableListView(_items);

  Product getElementById(String id) =>
      _items.singleWhere((value) => value.id == id);
}
