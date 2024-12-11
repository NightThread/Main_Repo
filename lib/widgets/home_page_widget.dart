import 'package:flutter/material.dart';
import 'package:tipa_ps_app/widgets/body_home_widget.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  int _selectedTab = 0;
   void navigationNews(){
      final navigator = Navigator.of(context);
      navigator.pushNamed('/news_screen');
   }

   void navigationPsStore(){
      final navigator = Navigator.of(context);
      navigator.pushNamed('/ps_screen');
   }

   void navigationSearch(){
      final navigator = Navigator.of(context);
      navigator.pushNamed('/search_screen');
   }

    void navigationPlay(){
      final navigator = Navigator.of(context);
      navigator.pushNamed('/play_screen');
   }

   void navigationLibrary(){
    final navigator = Navigator.of(context);
      navigator.pushNamed('/library_screen'); 
   }
  
  void onselectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
  currentIndex: _selectedTab,
  type: BottomNavigationBarType.fixed,
  selectedItemColor: Colors.white,
  unselectedItemColor: Colors.white,
  backgroundColor: Colors.grey.withValues(alpha: 0.1),
  items: const [
    BottomNavigationBarItem(
    icon: Icon(Icons.games_outlined),
    label: 'Грати',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.rocket_launch_rounded,),
    label: 'Новини',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.shopify_rounded),
    label: 'PS Store',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.line_style_rounded),
    label: 'Бібліотека ігор',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.search_rounded),
    label: 'Пошук',
  ),
  ],
  onTap: (index) {
    if (index == 0) navigationPlay();
    if (index == 1) navigationNews();
    if (index == 2) navigationPsStore();
    if (index == 3) navigationLibrary();
    if (index == 4) navigationSearch();
  },
  ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: const TitleWidget(),
        ),
      body: const BodyHomeWidget(),
    ); 
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.topStart,
      child: const Row(
        children: [
          ChatButton(),
          SizedBox(width: 260,),
          FriendsButton()
        ],
      ));
  }
}

class FriendsButton extends StatelessWidget {
  const FriendsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     void navigation(){
      final navigator = Navigator.of(context);
      navigator.pushNamed('/friends_screen');
    }
    return IconButton(
      onPressed: navigation,
      highlightColor: Colors.amber,
      icon: const Icon(Icons.group_rounded, color: Colors.white,));
  }
}

class ChatButton extends StatefulWidget {
  
  const ChatButton({
    super.key,
  });

  @override
  State<ChatButton> createState() => _ChatButtonState();
}

class _ChatButtonState extends State<ChatButton> {
  @override
  Widget build(BuildContext context) {
    
    void navigation(){
      final navigator = Navigator.of(context);
      navigator.pushNamed('/message_screen');
      setState(() {
        
      });
    }
    return IconButton(
      highlightColor: Colors.amber,
      onPressed: navigation,
      icon: const Icon(Icons.chat_bubble_rounded, color: Colors.white,));
}
}