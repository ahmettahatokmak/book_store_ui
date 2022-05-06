
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:book_store_ui/screens/bookDetails.dart';

Widget item(String imageUrl,String title,String subtitle){
            return Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: SizedBox(
            width: 180,
            height: 310,
            child: Column(
            children: [
            ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(imageUrl,width: 180,height: 260,fit: BoxFit.cover,),),

            const SizedBox(height: 10,),
            Align(
            alignment: Alignment.topLeft,
            child: Text(title,style:const TextStyle(color: Colors.black,fontFamily: "Ubuntu"),)),

            const SizedBox(height: 5,),

            Align(
            alignment: Alignment.topLeft,
            child: Text(subtitle,style:const TextStyle(color: Colors.grey,fontFamily: "Ubuntu"),)),],),),);}


Widget item2(String imageURL,BuildContext context){
  return GestureDetector(
    onTap: ()=>Navigator.push(context, CupertinoPageRoute(builder: (context)=>const BookDetails())),
    child:Padding(
      padding: const EdgeInsets.only(left:15.0),
      child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(imageURL,width: 180,height: 260,fit: BoxFit.cover,),),
    ),


  );
}