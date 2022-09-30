import "package:flutter/material.dart";
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      backgroundColor: Colors.white,
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 82,
        title: Text(
          'Krishi Bazaar',
          style: TextStyle(
              color: Color.fromARGB(226, 107, 38, 1),
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Image.asset('assets/icons/menu.png'),
          onPressed: () {},
        ));
  }
}
