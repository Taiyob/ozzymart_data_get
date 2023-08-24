import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ozzymart_data_get/ui/categories.dart';


class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomePageState();

}
class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 1, child: Scaffold(
      appBar: AppBar(
        title: Center(child: Text('OzzyMart Product From Api',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 21,fontStyle: FontStyle.italic),)),
        bottom: const TabBar(
          tabs: [
            Tab(text: 'Categories',),
            //Tab(text: 'Brands',),
          ],
        ),
      ),
      body: const TabBarView(
        children: [
          Category(),
        ],
      ),
    ));
  }
}
