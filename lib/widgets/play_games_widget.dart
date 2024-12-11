import 'package:flutter/material.dart';
import 'package:tipa_ps_app/resources/resources.dart';
import 'package:tipa_ps_app/widgets/bottom_navigation_widget.dart';
import 'package:tipa_ps_app/widgets/home_page_widget.dart';

class Games {
  final String title;
  final String image;

  Games({
    required this.title, 
    required this.image,
    });


}


class PlayGamesWidget extends StatefulWidget {
   const PlayGamesWidget({super.key});

  @override
  State<PlayGamesWidget> createState() => _PlayGamesWidgetState();
}

class _PlayGamesWidgetState extends State<PlayGamesWidget> {
  final _gayms = [
    Games(image: AppImages.deadIslandCover, title: 'Dead Island 2'),
    Games(image: AppImages.rainWorldCover, title: 'Rain World'),
    Games(image: AppImages.re3Cover, title: 'Resident Evil 3'),
  ];

  var _filteredGayms = <Games>[];


  void _searchGayms(){
    if (_searchControllerR.text.isNotEmpty){
      _filteredGayms = _gayms.where((Games gaym){
        return gaym.title.toLowerCase().contains(_searchControllerR.text.toLowerCase());
      }).toList();
    } else {
      _filteredGayms = _gayms;
    }
    setState(() {
      
    });
  }
  final _searchControllerR = TextEditingController();
  @override
  void initState() {
    super.initState();
    _searchGayms();
    _searchControllerR.addListener(_searchGayms);
  }

  @override
  Widget build(BuildContext context) {
    //var gaym = <Games>[];
    return Scaffold(
      bottomNavigationBar: bottomnavigation,
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade900,
        title: const TitleWidget(),
        ),
      body:  Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: ListView.builder(
              itemCount: _filteredGayms.length,
              itemExtent: 150,
              itemBuilder: (BuildContext context, int index){
                final gaym = _filteredGayms[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        Image(image: AssetImage(gaym.image)),
                        Text(gaym.title),
                      ],
                    ),
                  ),
                );
            }),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 25),
              child: TextField(
      controller: _searchControllerR,
      maxLines: 1,
      style: const TextStyle(color: Colors.white,),
      keyboardAppearance: Brightness.dark,
      textInputAction: TextInputAction.search,
      //keyboardType: TextInputType.datetime,
      cursorColor: Colors.grey,
      cursorHeight: 20,
      // ignore: deprecated_member_use
      toolbarOptions: const ToolbarOptions(copy: true, selectAll: true),
      decoration: const InputDecoration(
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
    ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: TextField(
      controller: _searchControllerR,
      maxLines: 1,
      style: const TextStyle(color: Colors.white,),
      keyboardAppearance: Brightness.dark,
      textInputAction: TextInputAction.search,
      //keyboardType: TextInputType.datetime,
      cursorColor: Colors.grey,
      cursorHeight: 20,
      // ignore: deprecated_member_use
      toolbarOptions: const ToolbarOptions(copy: true, selectAll: true),
      decoration: const InputDecoration(
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
    ),
            ),
        ],
      ),
        );
  }
}