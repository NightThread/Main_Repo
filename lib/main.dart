import 'package:flutter/material.dart';
import 'package:tipa_ps_app/widgets/achievments_screen_widget.dart';
import 'package:tipa_ps_app/widgets/friends_widget.dart';
import 'package:tipa_ps_app/widgets/home_page_widget.dart';
import 'package:tipa_ps_app/widgets/library_widget.dart';
import 'package:tipa_ps_app/widgets/message_widget.dart';
import 'package:tipa_ps_app/widgets/news_widget.dart';
import 'package:tipa_ps_app/widgets/notification_widget.dart';
import 'package:tipa_ps_app/widgets/play_games_widget.dart';
import 'package:tipa_ps_app/widgets/ps_store_widget.dart';
import 'package:tipa_ps_app/widgets/search_widget.dart';
import 'package:tipa_ps_app/widgets/settings_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PS APP',
      theme: ThemeData(
        //bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          //backgroundColor: Colors.amber,
        //),
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
      ),
      routes: {
        //'/': (context) => const HomePageWidget(),
        '/main_screen': (context) => const HomePageWidget(),
        '/achievements_screen': (context) =>  AchievmentsScreenWidget(),
        '/message_screen': (context) => const MessageWidget(),
        '/friends_screen': (context) => const FriendsWidget(),
        '/settings_screen': (context) => const SettingsWidget(),
        '/notifications_screen': (context) => const NotificationWidget(),
        '/news_screen': (context) => const NewsWidget(),
        '/ps_screen': (context) => const PsStoreWidget(),
        '/search_screen': (context) => const SearchWidget(),
        '/play_screen': (context) =>  const PlayGamesWidget(),
        '/library_screen': (context) => const LibraryWidget(),
      },
      initialRoute: '/main_screen',
    );
  }
}

