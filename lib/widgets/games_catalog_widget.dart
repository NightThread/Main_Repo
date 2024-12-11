import 'package:flutter/material.dart';
import 'package:tipa_ps_app/resources/resources.dart';
import 'package:tipa_ps_app/styles&colors/text_styles.dart';


//class MyClipper extends CustomClipper<Rect> {
//  @override
//  Rect getClip (Size size){//
//    return Rect.fromLTWH(10, 10, 150, 150);
//  }
//  
//  @override
//  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
//    return false;
//  }
//}

class Game {
  final String imageName;
  final String title;
  final String version;
  final dynamic color;
  final dynamic style;

  Game({
    required this.imageName,
    required this.title,
    required this.version,
    required this.color,
    required this.style,

  });
}

class GamesCatalogWidget extends StatefulWidget {

  const GamesCatalogWidget({super.key});

  @override
  State<GamesCatalogWidget> createState() => _GamesCatalogWidgetState();
}

class _GamesCatalogWidgetState extends State<GamesCatalogWidget> {
  final _games = [
    Game(imageName: AppImages.deadIslandCover, title: 'Dead Island 2', version: 'PS5', color: Colors.white, style: ps5style),
    Game(imageName: AppImages.daysGoneCover, title: 'Days Gone', version: 'PS4', color: Colors.black, style: ps4style,),
    Game(imageName: AppImages.outlast2Cover, title: 'Outlast 2', version: 'PS4', color: Colors.black, style: ps4style),
    Game(imageName: AppImages.rainWorldCover, title: 'Rain World', version: 'PS5', color: Colors.white, style: ps5style),
    Game(imageName: AppImages.witcherCover, title: 'Witcher 3: Wild Hunt', version: 'PS4', color: Colors.black, style: ps4style),
    Game(imageName: AppImages.re3Cover, title: 'Resident Evil 3', version: 'PS5', color: Colors.white, style: ps5style),
    Game(imageName: AppImages.re2Cover, title: 'Resident Evil 2', version: 'PS4', color: Colors.black, style: ps4style),
  ];

  var _filteredGames = <Game>[];

  void _searchGames() {
    final query = _searchController.text;
    if (query.isNotEmpty){
      _filteredGames = _games.where((Game game) {
       return game.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredGames = _games;
    }
    setState(() {});
  }

  final _searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _searchGames();
    _searchController.addListener(_searchGames);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
            ListView.builder(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    padding: EdgeInsets.only(top: 70),
                    itemCount: _filteredGames.length,
                    itemExtent: 470,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
            final game = _filteredGames[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: FittedBox(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10), 
                    ),
                    image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(game.imageName),
                    opacity: 0.2),
                    color: Color(0xFF212121),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              width: 150,
                              height: 150,
                              image: AssetImage(game.imageName),
                                ),
                          ),
                        ),
                       // Padding(
                       //   padding: EdgeInsets.all(8.0),
                       //   child: Image(
                       //     width: 150,
                       //     height: 150,
                       //     image: AssetImage(AppImages.deadIslandCover)),
                       // ),
                       Padding(
                         padding: const EdgeInsets.only(left: 8.0),
                         child: Text(game.title, style: basictextstyle,),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: game.color,
                          ),
                          width: 30,
                          height: 15,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5, top: 1.5),
                            child: Text(game.version, style: game.style,),
                          ),
                         ),
                       )
                    ],
                    ),
                  ),
                ),
              );
            }
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: TextField(
      controller: _searchController,
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
    );
  }
}

class GamesCatalogWidget2 extends StatelessWidget {
  const GamesCatalogWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemExtent: 200,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10), 
                ),
                image: DecorationImage(image: AssetImage(AppImages.re2Cover),
                opacity: 0.1),
                color: Color(0xFF212121),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(
                        width: 150,
                        height: 150,
                        image: AssetImage(
                          AppImages.re2Cover),
                          ),
                    ),
                   // Padding(
                   //   padding: EdgeInsets.all(8.0),
                   //   child: Image(
                   //     width: 150,
                   //     height: 150,
                   //     image: AssetImage(AppImages.deadIslandCover)),
                   // ),
                   const Padding(
                     padding: EdgeInsets.only(left: 8.0),
                     child: Text('Resident Evil 2', style: basictextstyle,),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.black,
                      ),
                      width: 30,
                      height: 15,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5, top: 1.5),
                        child: Text('PS4', style: TextStyle(color: Colors.white, fontWeight:  FontWeight.bold, fontSize: 8),),
                      ),
                     ),
                   )
                ],
                ),
              ),
            ),
          );
        }
        );
  }
}