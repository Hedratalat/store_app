import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/widget/home/home_body.dart';

class producrHomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppbar(),
      body: HomeBody(),
    );
  }

  AppBar homeAppbar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Text('Welcom to store',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 25.0),),
      centerTitle: false,
        actions: [
          IconButton(onPressed: (){}, icon:Icon (Icons.menu ,color: Colors.white,),)
        ],
    );
  }
}
