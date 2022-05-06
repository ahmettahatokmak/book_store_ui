import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:book_store_ui/colors.dart';
import 'package:book_store_ui/paths.dart';
import 'package:book_store_ui/widget/item1.dart';
import 'package:book_store_ui/widget/item2.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: AppBar(
        elevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      leading: IconButton(onPressed: (){}, icon: SvgPicture.asset(menu)),
      actions: [
        IconButton(onPressed: (){}, icon:const Icon(EvaIcons.search,color: Colors.black,))],),

      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.all( 15.0),
          child: Column(
            children: const[
             Padding(
               padding: EdgeInsets.only(left:15.0),
               child: Align(
                 alignment: Alignment.topLeft,
                 child: Text("Popular Now",style: titleStyle,)),
             ),
             SizedBox(height: 20,),
             ItemsTop(),
             SizedBox(height: 40,),
          
             Padding(
               padding: EdgeInsets.only(left:15.0),
               child: Align(
                 alignment: Alignment.topLeft,
                 child: Text("Bestsellers",style: TextStyle(color: Colors.black,fontFamily: "Ubuntu",fontSize: 18),)),),
             SizedBox(height: 20,),
      
             ItemBottom()
            ],
          ),
        ),
      ),
    );
  }
}