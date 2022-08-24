import 'package:flix/core/colors.dart';
import 'package:flix/core/constants.dart';
import 'package:flix/presentation/home/screen_home.dart';
import 'package:flix/presentation/widgets_common/custom_icon.dart';
import 'package:flix/presentation/widgets_common/topbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../downloads/widgets/screen_downloads.dart';

class FullView extends StatelessWidget {

   FullView({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
        Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .74,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(posters[3]), fit: BoxFit.cover)),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomIcons(icon: CupertinoIcons.add, text: "My List"),
                TextButton.icon(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size.fromWidth(100)),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.play_fill,
                      size: 21,
                      color: backgroundColor,
                    ),
                    label: Text(
                      "Play",
                      style: TextStyle(
                          color: backgroundColor, fontWeight: FontWeight.bold),
                    )),
                CustomIcons(icon: Icons.info, text: "info")
              ],
            ),
          ),
        ],
      );


      
    
  }
}
