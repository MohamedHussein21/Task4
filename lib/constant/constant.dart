import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> image =[
  'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/64/218271/1.jpg?8567',
  'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/05/637271/1.jpg?1440',
  'https://cdn.shopify.com/s/files/1/0270/6646/6437/products/product-image-1204802561_800x.jpg?v=1576692276',
  'https://www.thaqafnafsak.com/wp-content/uploads/2020/10/%D8%B1%D8%A3%D8%B3-1.jpg',
  'https://www.thaqafnafsak.com/wp-content/uploads/2020/10/%D8%B1%D8%A3%D8%B3-1.jpg',
  'https://www.thaqafnafsak.com/wp-content/uploads/2020/10/%D8%B1%D8%A3%D8%B3-1.jpg',
  'https://www.thaqafnafsak.com/wp-content/uploads/2020/10/%D8%B1%D8%A3%D8%B3-1.jpg',
];


   Widget buildCard (context,Widget image,) => InkWell(
     onTap: (){
       Navigator.of(context).popAndPushNamed('/productItem');
     },
     child: Card(
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(10),
       ),
       elevation: 10,
       margin: EdgeInsets.all(5),
       child: Stack(
         children: [
           Container(
             padding: EdgeInsets.all(5),
             child: image,
           )
         ],
       ),
     ),
   );