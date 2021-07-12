import 'package:flutter/material.dart';
import 'package:task4/constant/constant.dart';
class ProductItem extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xfffafafa),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).popAndPushNamed('/body');
          },
        ),
        actions: [
          IconButton(
            onPressed: () {}
            , icon: Icon(Icons.shopping_cart),
            color: Colors.black,)
        ],
      ),
      body: Expanded(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
