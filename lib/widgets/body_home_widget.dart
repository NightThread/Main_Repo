import 'package:flutter/material.dart';
import 'package:tipa_ps_app/styles&colors/text_styles.dart';
import 'package:tipa_ps_app/widgets/games_list_widget.dart';

class BodyHomeWidget extends StatelessWidget {
  const BodyHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  const [
        AvatarNotificationSetingsWidget(),
         GamesListWidget(),
      ],
    );
  }
}

class AvatarNotificationSetingsWidget extends StatelessWidget {
  const AvatarNotificationSetingsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
        height: 80,
        width: double.infinity,
        color: Colors.black87,
        alignment: AlignmentDirectional.topStart,
      ),
        const Positioned(
          top: 10,
          left: 12.5,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.person_2_rounded, color: Colors.white,),
                SizedBox(width: 10,),
                Text('artem dziuba', style: basictextstyle),
                 SizedBox(width: 130,),
                NotifficationButton(),
                SizedBox(width: 10,),
                SettingsButton()
              ],
            ),
          ),
        ),
        const Positioned(
          top: 10,
          right: 60,
          child: Icon(Icons.circle, color: Colors.blue,
          ),
          ),
          const Positioned(
            top: 12,
            right: 68,
            child: Text('3',style: TextStyle(color: Colors.black),)),
            const Positioned(
              bottom: 1,
              left: 20,
              child: Text('Нещодавно зіграні', style: basictextstyle,)),
      ],
    );
  }
}

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     final navigator = Navigator.of(context);
    void navigation(){
      navigator.pushNamed('/settings_screen');
    }
    return IconButton(
      onPressed: navigation,
      highlightColor: Colors.amber,
      icon: const Icon(Icons.settings_rounded, color: Colors.white,));
  }
}

class NotifficationButton extends StatelessWidget {
  const NotifficationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);
    void navigation(){
      navigator.pushNamed('/notifications_screen');
    }
    return IconButton(
      onPressed: navigation,
      highlightColor: Colors.amber,
      icon: const Icon(Icons.notifications_rounded, color: Colors.white,));
  }
}