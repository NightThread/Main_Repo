import 'package:flutter/material.dart';
import 'package:tipa_ps_app/resources/resources.dart';
import 'package:tipa_ps_app/styles&colors/text_styles.dart';

class GamesListWidget extends StatelessWidget {
  const GamesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        GameDiscriptionWidget(),
        GameDiscriptionWidget(),
        GameDiscriptionWidget(),
      ],
    );
  }
}

class GameDiscriptionWidget extends StatelessWidget {
  const GameDiscriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 2),
                color: Colors.black,
              ), 
              ],
            color: Color(0xFF212121),
            ),
            height: 200,
            width: double.infinity,
            //color: Colors.grey.shade900,
            child: Stack(
              children: [
                const Positioned(
                  left: 70,
                  bottom: 15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Призи', style: basictextstyle,),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.blender_rounded, color: Colors.blue, size: 15,),
                          Text('0', style: TextStyle(color: Colors.white, fontSize: 10),),
                          SizedBox(width: 5,),
                          Icon(Icons.blender_rounded, color: Colors.yellow, size: 15,),
                          Text('1', style: TextStyle(color: Colors.white, fontSize: 10),),
                          SizedBox(width: 5,),
                           Icon(Icons.blender_rounded, color: Colors.grey, size: 15,),
                          Text('3', style: TextStyle(color: Colors.white, fontSize: 10),),
                          SizedBox(width: 5,),
                          Icon(Icons.blender_rounded, color: Colors.brown, size: 15,),
                          Text('8', style: TextStyle(color: Colors.white, fontSize: 10),),
    
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 120,
                    width: 120,
                    child: Image(image: AssetImage(AppImages.snowRunnerCover)),
                  ),
                ),
                Positioned(
                  top: 130,
                  left: 10,
                  child: Container(
                  height: 1,
                  width: 355,
                  color: Colors.grey,
                ),
                ),
                  const Positioned(
                    top: 30,
                    left: 140,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('SnowRunner', style: gametitlestyle,),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Зіграно', style: TextStyle(color: Colors.white, fontSize: 10),),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(Icons.watch_later_rounded, color: Colors.white, size: 15,),
                          SizedBox(
                            width: 5,
                          ),
                          Text('30 г', style: gametitlestyle,),
                        ],
                      ),
                    ],
                    ),
                  ),
                  const Positioned(
                    bottom: 15,
                    left: 10,
                    child: Row(
                            children: [
                              Icon(Icons.blender_rounded, color: Colors.white, size: 40,),
                              SizedBox(
                                width: 280,
                              ),
                              AchievementsDetail()
                            ],
                          ),
            )],
            ),
          ),
        ),
      ],
    );
  }
}




class AchievementsDetail extends StatefulWidget {
  const AchievementsDetail({
    super.key,
  });

  @override
  State<AchievementsDetail> createState() => _AchievementsDetailState();
}

class _AchievementsDetailState extends State<AchievementsDetail> {
  @override
  Widget build(BuildContext context) {
    
    void navigation(){
      final navigator = Navigator.of(context);
      navigator.pushNamed('/achievements_screen');
      setState(() {
        
      }); 
    }
    return IconButton(
      onPressed: navigation,
      highlightColor: Colors.amber,
      icon: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,));
  }
}