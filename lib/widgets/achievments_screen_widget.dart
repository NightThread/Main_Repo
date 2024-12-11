import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tipa_ps_app/resources/resources.dart';
import 'package:tipa_ps_app/styles&colors/text_styles.dart';
import 'package:tipa_ps_app/widgets/bottom_navigation_widget.dart';
import 'package:tipa_ps_app/widgets/home_page_widget.dart';


class Achievement {
  final String title;
  final String description;
  final dynamic image;
  final dynamic icon;

  Achievement({required this.title, required this.description, required this.image, required this.icon});
  
}




class RadialPercentWidget extends StatelessWidget {
  final Widget child;
  const RadialPercentWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CustomPaint(painter: MyPainter(),),
        child,
      ],
    );
  }
}
class MyPainter extends CustomPainter {
  final double percent = 0.37;
  @override
  void paint(Canvas canvas, Size size) {
    final backgroundPaint = Paint();
    backgroundPaint.color = Colors.grey.shade900;
    backgroundPaint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2,), size.width / 2, backgroundPaint);
  
      final fieldPaint = Paint();
    fieldPaint.color = Colors.grey.shade800;
    fieldPaint.style = PaintingStyle.stroke;
    fieldPaint.strokeWidth = 3;
    canvas.drawArc(
      Offset(2.5, 2.5) & Size(size.width -5, size.height -5), 
      pi * 2 * percent - (pi /2), 
      pi * 2 * (1.0 - percent), false ,fieldPaint);

   final fillPaint = Paint();
    fillPaint.color = Colors.white;
    fillPaint.style = PaintingStyle.stroke;
    fillPaint.strokeWidth = 3;
    fillPaint.strokeCap = StrokeCap.round;
    canvas.drawArc(
      Offset(2.5, 2.5) & Size(size.width -5, size.height -5), 
      -pi /2, 
      pi * 2 * percent, 
      false, 
      fillPaint);

  }


  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}


class AchievmentsScreenWidget extends StatelessWidget {
   AchievmentsScreenWidget({super.key});

  final _achievements = [
    Achievement(title: 'The Blue Hall', description: 'Drive 1km in the water', image: AppImages.blueHall, icon: Icon(Icons.blender_rounded, color: Colors.brown, size: 15,)),
    Achievement(title: 'Once a Farmer always a Farmer', description: 'Smash 500 pumpkins', image: AppImages.farmer, icon: Icon(Icons.blender_rounded, color: Colors.brown, size: 15,)),
    Achievement(title: 'Goliath', description: 'Use a telescopic crane to raise a special objective semi-trailer at least 5 meters above the ground', image: AppImages.goliath, icon: Icon(Icons.blender_rounded, color: Colors.brown, size: 15,)),
    Achievement(title: 'Yeah, you can drive!', description: 'All main tutorial hints have been activated at least once', image: AppImages.youCanDrive, icon: Icon(Icons.blender_rounded, color: Colors.brown, size: 15,)),
  ];

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
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Image(image: AssetImage('images/SnowRunner_cover.jpg')),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Text('Snowrunner', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                      Text('PS5', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ],
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Row(children: [
                  Icon(Icons.person_2_rounded, color: Colors.white,),
                  SizedBox(width: 10,),
                  Text('artem dziuba', style: TextStyle(color: Colors.white,),)
                ],),
              ),
              const MainAchievementBoard(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ClipOval(
                      child: Container(
                        width: 40,
                        height: 40,
                        color: Colors.grey.shade900,
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.format_list_bulleted_rounded, color: Colors.white,),)),
                    ),
                  ],
                ),
              ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Row(
                        children: const [Text('Найрідкісніший отриманний приз', style: basictextstyle,)],
                      ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade900,
                          ),
                          height: 300,
                          width: 350,
                          child: ListView.builder(
                            itemCount: _achievements.length,
                            itemExtent: 90,
                            itemBuilder: (BuildContext context, int index){
                              final achiv = _achievements[index];
                              return Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey.shade900,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(10),
                                              child: SizedBox(
                                                height: 80,
                                                width: 80,
                                                child: Image(image: AssetImage(achiv.image))),
                                            ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(achiv.title, style: basictextstyle,),
                                              Text(
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                achiv.description, style: basictextstyle,),
                                              achiv.icon,
                                            ],
                                          ),
                                        )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            }
                            ),
                        ),
                      )
                    ],
                  ),
        ],
        ),
      ],
      ),
    );
              
              
           
}
}

class MainAchievementBoard extends StatelessWidget {
  const MainAchievementBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27.0, right: 15),
      child: Container(
        alignment: Alignment.topLeft,
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
        width: double.infinity,
        height: 200,
        child:  Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 15.0),
          child: Column(
            children: [
              Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                          child: const Column(
                            children: [
                              Text('16', style: basictextstyle,),
                              Text('Отримано', style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
                        const SizedBox(width: 35,),
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                              width: 70,
                              height: 70,
                              child: RadialPercentWidget(child: Center(child: Text('37%', style: TextStyle(color: Colors.white),))),
                            ),
                        ],
                      ),
                         const SizedBox(width: 35,),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: const Column(
                            children: [
                              Text('38', style: basictextstyle,),
                              Text('Доступно', style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                     SizedBox(
                       width: 50,
                     ),
                      Column(
                        children: [
                          Icon(Icons.blender_rounded, color: Colors.blue, size: 55,),
                          Text('0', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      SizedBox(width: 5,),
                      Column(
                        children: [
                          Icon(Icons.blender_rounded, color: Colors.yellow, size: 55,),
                           Text('1', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      SizedBox(width: 5,),
                       Column(
                         children: [
                           Icon(Icons.blender_rounded, color: Colors.grey, size: 55,),
                            Text('3', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                         ],
                       ),
                      SizedBox(width: 5,),
                      Column(
                        children: [
                          Icon(Icons.blender_rounded, color: Colors.brown, size: 55,),
                          Text('8', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      ],
                    ),
                     )
            ],
          ),
        ),
            ),
        );
  }
}

