import 'package:flutter/material.dart';
import 'package:book_store_ui/widget/item_widget.dart';

class ItemsTop extends StatefulWidget {
  const ItemsTop({Key? key}) : super(key: key);

  @override
  State<ItemsTop> createState() => _ItemsTopState();
}

class _ItemsTopState extends State<ItemsTop> {
  String image="https://media.discordapp.net/attachments/964899812380147734/972110712174440518/WhatsApp_Image_2022-04-29_at_23.19.39.jpeg?width=472&height=427";
  String subtitle = "Burda Ne Yazıyor :D?";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, //yatay kaydırma
      child: Row(
        children: [
        item(image, "Creative Hustle", subtitle),
        item(image, "Art Hustle", subtitle),
        item(image, "The Bosh", subtitle),
        item(image, ".?/*", subtitle),
        item(image, "Astra Moses", subtitle),
        ],
      ),
    );
  }
}