import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/models/candi.dart';
import 'package:wisata_candi/widgets/ItemCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO 1 : appbar
      appBar: AppBar(title: Text("Wisata Candi"),),
      //TODO 2 : body dgn gridview
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), padding: EdgeInsets.all(8), itemCount: candiList.length,
        itemBuilder: (context, index){
          Candi candi = candiList[index];
          return itemCard(candi: candi);
        },
        ),
      //TODO 3 : itemcard dengan return value dari gridview
    );
  }
}