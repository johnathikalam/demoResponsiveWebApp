import 'package:demo_ecomapp/Widgets/Navbar.dart';
import 'package:demo_ecomapp/Widgets/Banner.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Column(
          children:[
            Navbar(),
            DisplayBanner()
          ]
        )
      )
    );
  }
}
