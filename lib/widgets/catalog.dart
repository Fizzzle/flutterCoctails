import 'package:flutter/material.dart';

class CatalogListTile extends StatelessWidget {
  final imgUrl;
  const CatalogListTile({super.key, this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // ! Навигация на страницу каталога
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          leading: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(imgUrl),
                  fit: BoxFit.cover,
                )),
          ),
          title: Text('Авторские напитки'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Коктейли от Артёма'),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.amber,
                  ),
                  Text('4.5'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
