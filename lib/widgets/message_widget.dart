import 'package:flutter/material.dart';
import 'package:tipa_ps_app/widgets/bottom_navigation_widget.dart';
import 'package:tipa_ps_app/widgets/home_page_widget.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomnavigation,
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade900,
        title: const TitleWidget(),
        ),
      body: ListView(
        
        //children: [
        //  Column(
        //    children: [
        //      Container(
        //        width: 100,
        //        height: 100,
        //        color: Colors.amber,
        //      )
        //    ],
        //  )
        //],
      ),
      );
  }
}