import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/detail_screen.dart';
import 'package:wisata_candi/models/candi.dart';

class itemCard extends StatelessWidget {
  //TODO 1 : Deklarasi Variable
  final Candi candi;
  const itemCard({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    //TODO 6: Implementasi routing ke detailscreen

    
      //TODO 2 : Tetapkan Shape , margin, dan elevation
      return InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute( 
              builder: (context) => DetailScreen(candi: candi),),

          );
        },
        child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(4),
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //TODO 3 Buat image sebagai anak dari column
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  candi.imageAsset,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          //TODO 4 Buat Text
          Padding(
            padding: EdgeInsets.only(left: 16, top: 8),
            child: Flexible(
                child: Text(
              "${candi.name}",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            )),
          )
        ],
      ),
    )
      );
  }
}