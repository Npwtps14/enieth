import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class UserProfileCard extends StatelessWidget {
  // static File? imageFile;

  @override
  Widget build(BuildContext context) {
    var transDetailController;
    return Row(
      children: [
        Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
              color: HexColor('#ffffff'),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: 
               Image.network("https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper.png", fit: BoxFit.contain),
        ),
        SizedBox(width: 15.0),
        Expanded(
          child: Container(
            height: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "สวัสดีคุณ,",
                  style:
                      TextStyle(color: HexColor('#ffffff'), fontWeight: FontWeight.bold),
                ),
                Text(
                  "",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => UpdateUserPage()),
                      // );
                    },
                    icon: Icon(Icons.settings)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
