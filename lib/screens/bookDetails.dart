import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:book_store_ui/colors.dart';
import 'package:book_store_ui/paths.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String url="https://media.discordapp.net/attachments/964899812380147734/972110712174440518/WhatsApp_Image_2022-04-29_at_23.19.39.jpeg?width=472&height=427";
    var size = MediaQuery.of(context).size;
    return Scaffold(

    extendBodyBehindAppBar: true, //AppBar'ı görünmez gibi yapar
    appBar: AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      leading: IconButton(onPressed: ()=> Navigator.pop(context), icon:const Icon(CupertinoIcons.back,color: Colors.black,)),
      actions: [
        IconButton(onPressed: (){}, icon:const Icon(EvaIcons.bookmarkOutline,color: Colors.black,)),
        IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/tree.svg",width: 20,height: 20,))],),

    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: size.width,
            height: size.height-200,
            color: kKrem,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40,),
                image(url),
                const SizedBox(height: 20,),
                const Text("Brand Strategy",style: titleStyle,),
                const Text("Dean Werner",style: TextStyle(color: Colors.grey,fontSize: 13,fontFamily: "Ubuntu"),),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    score(),
                    const Text("4.5",style: TextStyle(color: Colors.black,fontFamily: "Ubuntu",fontSize: 18),),
                    const Text("/5.0",style: TextStyle(color: Colors.grey,fontFamily: "Ubuntu",fontSize: 18),),],)],),),
    
    
         SizedBox(
           width: size.width-10,
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal:15.0),
             child: SizedBox(
               child: Column(
                 children: [
                   const SizedBox(height: 30,),
                const  Align(
                    alignment: Alignment.topLeft,
                    child:  Text("Brand Strategy",style: titleStyle,)),
                  const   SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("""Lorem Ipsum is simply dummy text of the printing and typesetting industry. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.""",style: TextStyle(color: Colors.grey.shade400,fontFamily: "Ubuntu",fontWeight: FontWeight.w400),)),

                 bottomBar()
                 ],
               ),
             ),
           ),
         )           
        ],
      ),
    ),
    );
  }



Widget bottomBar(){
  return Column(
     mainAxisAlignment: MainAxisAlignment.center,
    children: [
     Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
        OutlinedButton.icon(style: OutlinedButton.styleFrom(side: BorderSide.none),onPressed: (){}, icon: SvgPicture.asset(menu,width: 20,height: 20,), label:const Text("Prewiev",style: TextStyle(fontFamily: "Ubuntu",color: Colors.black),)),
        const SizedBox(width: 30,),
        OutlinedButton.icon(style: OutlinedButton.styleFrom(side: BorderSide.none),onPressed: (){}, icon:const Icon(EvaIcons.messageSquareOutline,color: Colors.black,), label:const Text("Reviews",style: TextStyle(fontFamily: "Ubuntu",color: Colors.black),))
       ],
     ),
SizedBox(width: 250,height: 50,child: OutlinedButton(style: OutlinedButton.styleFrom(shape:const StadiumBorder(),side: BorderSide.none,backgroundColor: kPurple,),onPressed: (){}, child:const Text(r"Buy Now For $29,67",style: TextStyle(fontFamily: "Ubuntu",color: Colors.white),))),
const SizedBox(height: 30,)
    ],
  );
}


  Widget image (String url){
    return Container(
      width: 180,
      height: 250,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),boxShadow: const[
        BoxShadow(
          offset: Offset(0,1),
          blurRadius: 6,
          spreadRadius: 1,
          color: Colors.grey
        )
      ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(url,width: 200,height: 300,fit: BoxFit.cover,),
      ),
    );
  }

Widget score (){
  return RatingBar.builder(
  initialRating: 4.5,
  minRating: 1,
  itemSize: 30,
  direction: Axis.horizontal,
  allowHalfRating: true,
  itemCount: 5,
  itemPadding:const  EdgeInsets.symmetric(horizontal: 4.0),
  itemBuilder: (context, _) => const Icon(
    Icons.star,
    color: kPurple,
  ),
  onRatingUpdate: (rating) {
  
  },
);
}
}