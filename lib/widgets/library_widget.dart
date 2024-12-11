import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tipa_ps_app/widgets/bottom_navigation_widget.dart';
import 'package:tipa_ps_app/widgets/home_page_widget.dart';

class RadialPercentWidget extends StatelessWidget {
  final Widget child;
  const RadialPercentWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        CustomPaint(painter: MyPainter(),),
        child,
      ],
    );
  }
}
class MyPainter extends CustomPainter {
  final double percent = 0.72;
  @override
  void paint(Canvas canvas, Size size) {
    final backgroundPaint = Paint();
    backgroundPaint.color = Colors.black;
    backgroundPaint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2,), size.width / 2, backgroundPaint);
  
      final fieldPaint = Paint();
    fieldPaint.color = Colors.blue;
    fieldPaint.style = PaintingStyle.stroke;
    fieldPaint.strokeWidth = 5;
    canvas.drawArc(
      Offset(2.5, 2.5) & Size(size.width -5, size.height -5), 
      pi * 2 * percent - (pi /2), 
      pi * 2 * (1.0 - percent), false ,fieldPaint);

   final fillPaint = Paint();
    fillPaint.color = Colors.green;
    fillPaint.style = PaintingStyle.stroke;
    fillPaint.strokeWidth = 5;
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

class LibraryWidget extends StatelessWidget {
  const LibraryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomnavigation,
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade900,
        title: const TitleWidget(),
        ),
      body: Column(
        children: [Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red, 
          ), 
          ),
          child: const RadialPercentWidget(child: Center(child: Text('72%', style: TextStyle(color: Colors.white),))),
          )],
        ),
    ); 
  }
}
