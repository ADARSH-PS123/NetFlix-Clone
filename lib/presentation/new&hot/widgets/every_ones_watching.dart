import 'package:flix/core/colors.dart';
import 'package:flix/core/constants.dart';
import 'package:flix/presentation/downloads/widgets/screen_downloads.dart';
import 'package:flix/presentation/widgets_common/custom_icon.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class EveryOnesWatching extends StatelessWidget {
  const EveryOnesWatching({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView(
        children: List.generate(10, (index) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          height,
          Text(
            "Friends",
            style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                letterSpacing: 1,
                fontWeight: FontWeight.bold),
          ),
          height,
          Text(
            "After Jodi Kreyman gains popularity, her miscommuni-  cations start causing rifts with those around her and now she really needs to 'stand tall'.",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          kheight2,
          kheight2,
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: size.height * .24,
                child: Image.network(
                  posters[4],
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 2,
                right: 9,
                child: CircleAvatar(
                    radius: 17,
                    backgroundColor: backgroundColor,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.volume_off,
                          size: 17,
                        ))),
              ),
            ],
          ),
          Row(
            children: [
              Spacer(),
              GestureDetector(
                child: CustomIcons(
                    icon: CupertinoIcons.share_solid, text: "Share"),
                onTap: () {},
              ),
              GestureDetector(
                child: CustomIcons(icon: CupertinoIcons.add, text: "Add"),
                onTap: () {},
              ),
              GestureDetector(
                child: CustomIcons(
                    icon: CupertinoIcons.play_arrow_solid, text: "Play"),
                onTap: () {},
              )
            ],
          )
        ],
      );
    }));
  }
}
