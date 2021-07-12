import 'package:flutter/material.dart';
import 'package:task4/constant/constant.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int _tabBarIndex = 0;
  int _bottomBarIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DefaultTabController(
          length: 4,
          child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _bottomBarIndex,
              onTap: (value) {
                setState(() {
                  _bottomBarIndex = value;
                });
              },
              items: [
                BottomNavigationBarItem(
                    label: 'Test', icon: Icon(Icons.person)),
                BottomNavigationBarItem(
                    label: 'Test', icon: Icon(Icons.person)),
                BottomNavigationBarItem(
                    label: 'Test', icon: Icon(Icons.person)),
                BottomNavigationBarItem(
                    label: 'Test', icon: Icon(Icons.person)),
              ],
            ),
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Color(0xfffafafa),
              title: Text('DISCOVER', style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              actions: [
                IconButton(
                  onPressed: () {}
                  , icon: Icon(Icons.shopping_cart),
                  color: Colors.black,)
              ],
              bottom: TabBar(
                indicatorColor: Colors.deepOrange,
                onTap: (value) {
                  setState(() {
                    _tabBarIndex = value;
                  });
                },
                tabs: [
                  Text(
                    'Jackets',
                    style: TextStyle(
                      color: _tabBarIndex == 0 ? Colors.black : Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Trouser',
                    style: TextStyle(
                      color: _tabBarIndex == 1 ? Colors.black : Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'T-shirts',
                    style: TextStyle(
                      color: _tabBarIndex == 2 ? Colors.black : Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Shoes',
                    style: TextStyle(
                      color: _tabBarIndex == 3 ? Colors.black : Colors.grey,
                      fontSize: 16,
                    ),
                  ),

                ],
              ),
            ),
            body: GridView.count(
              padding: EdgeInsets.all(10),
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              shrinkWrap: true,
              children: [
                buildCard(context,Image.network(image[0])),
                buildCard(context,Image.network(image[1])),
                buildCard(context,Image.network(image[2])),
                buildCard(context,Image.network(image[3])),
                buildCard(context,Image.network(image[4])),
                buildCard(context,Image.network(image[1])),
                buildCard(context,Image.network(image[2])),
                buildCard(context,Image.network(image[3])),

              ],




            ),

            ),
          ),


      ],
    );
  }

}
