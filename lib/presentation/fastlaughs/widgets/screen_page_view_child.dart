import 'package:flix/core/colors.dart';

import 'package:flix/core/constants.dart';
import 'package:flix/presentation/widgets_common/custom_icon.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../../core/colors.dart';

class ScreenPageViewChaild extends StatelessWidget {
  int index;
  ScreenPageViewChaild({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.accents[index % Colors.accents.length],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: CircleAvatar(
                radius: 19,
                backgroundColor: backgroundColor,
                child: IconButton(
                    onPressed: () {}, icon: Icon(CupertinoIcons.volume_off))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Padding(
                padding:  EdgeInsets.only(right: 10),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 19,
                ),
              ),
             height,
              const CustomIcons(icon: Icons.emoji_emotions,text: "LOL",),
               height,
              CustomIcons(icon: Icons.add,text: "LOL",),
               height,
              CustomIcons(icon: Icons.send_sharp,text: "Share",),
            height,
              CustomIcons(icon: CupertinoIcons.play_arrow_solid,text: "Play",),
              khalfHeight,
              kheight2
            ],
          )
        ],
      ),
    );
  }
}

