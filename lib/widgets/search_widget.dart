import 'package:flutter/material.dart';
import 'package:tipa_ps_app/widgets/bottom_navigation_widget.dart';
import 'package:tipa_ps_app/widgets/games_catalog_widget.dart';
//import 'package:tipa_ps_app/widgets/games_list_widget.dart';
import 'package:tipa_ps_app/widgets/home_page_widget.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

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
      body: Column(
      children: const <Widget>[
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: SizedBox(
            height: 200.0,
            child: GamesCatalogWidget(),
          ),
          ),
          //  Expanded(
          // child: SizedBox(
          //   height: 200.0,
          //   child: GamesCatalogWidget2(),
          // ),
          // ),
          ],
          ),
    );
  }
}

class SearchBarWidget extends StatefulWidget {
   const SearchBarWidget({
    super.key,
  });


  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {

   // const searchList = <Widget>[];
  //List<Widget> searching(String text) {
   // if (text == 'snowrunner') {
   //   searchList.add(const GameDiscriptionWidget(),);
   // }
   // return searchList;
 // }
    return const TextField(
      style: TextStyle(color: Colors.white,),
      maxLines: 1,
      keyboardAppearance: Brightness.dark,
      textInputAction: TextInputAction.search,
      //keyboardType: TextInputType.datetime,
      cursorColor: Colors.grey,
      cursorHeight: 20,
      // ignore: deprecated_member_use
      toolbarOptions: ToolbarOptions(copy: true, selectAll: true),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF212121),
          ),
          borderRadius: BorderRadius.all(Radius.circular(50),
          ),
        ),
        prefixIcon: Icon(Icons.search, color: Colors.white,),
        hintText: ('Шукати гру'),
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        constraints: BoxConstraints(
          maxWidth: 350,
          maxHeight: 50,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
           borderSide: BorderSide(
            color: Colors.grey, 
          ),
        ),
        fillColor: Color(0xFF212121),
        focusColor: Color(0xFF212121),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50),
        ),
        borderSide: BorderSide(
          color: Color(0xFF212121),
          style: BorderStyle.solid,
        ), 
        ),
      ),
     //onSubmitted: searching,
    );
  }
}

