import 'package:flutter/material.dart';
import 'package:simponi_gdsc/view/home/job_page.dart';
import 'package:simponi_gdsc/view/home/profile_page.dart';
import 'package:simponi_gdsc/view/home/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens = const <Widget>[
    ProfilePage(),
    SearchPage(),
    JobPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Cari',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label: 'Lowongan',
            ),
          ],
        ),
      ),
    );
  }
}
