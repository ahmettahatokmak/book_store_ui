import 'package:flutter/material.dart';

import 'item_widget.dart';

class ItemBottom extends StatefulWidget {
  const ItemBottom({Key? key}) : super(key: key);

  @override
  State<ItemBottom> createState() => _ItemBottomState();
}

class _ItemBottomState extends State<ItemBottom> {
  String imageURL="https://media.discordapp.net/attachments/964899812380147734/972110712174440518/WhatsApp_Image_2022-04-29_at_23.19.39.jpeg?width=472&height=427";
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal, //yatay kaydırma
      child: Row(
        children: [
            item2(imageURL, context),
            item2(imageURL, context),
            item2(imageURL, context),
            item2(imageURL, context),
            item2(imageURL, context),
        ],
      ),
    );
  }
}