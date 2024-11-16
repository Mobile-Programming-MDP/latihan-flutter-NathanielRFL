import 'package:flutter/material.dart';
import 'package:wisata_candi/favorite_screen.dart';
import 'package:wisata_candi/home_screen.dart';
import 'package:wisata_candi/profile_screen.dart';
import 'package:wisata_candi/search_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      title: "Wisata Candi",
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // TODO 1 : Deklarasi Variable
  int _currenIndex = 0;
  final List<Widget> _children = [
    const HomeScreen(),
    const SearchScreen(),
    const FavoriteScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO 2 : Buat Properti Body brupa widget
      body: _children[_currenIndex],
      // TODO 3 : Buat Properti bottomNavigator
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.deepPurple[50]),
          child: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.deepPurple,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: Colors.deepPurple,
                  ),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.deepPurple,
                  ),
                  label: "Favorite"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Colors.deepPurple,
                  ),
                  label: "Profil"),
            ],
            currentIndex: _currenIndex,
            onTap: (index) {
              setState(() {
                _currenIndex = index;
              });
            },
            selectedItemColor: Colors.deepPurple,
            unselectedItemColor: Colors.deepPurple[100],
            showUnselectedLabels: true,
          )),
      // TOOO 4 : buat data dan child dari Theme
    );
  }
}