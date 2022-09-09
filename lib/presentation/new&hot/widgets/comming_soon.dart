import 'package:flix/core/colors.dart';
import 'package:flix/core/constants.dart';
import 'package:flix/presentation/downloads/widgets/screen_downloads.dart';
import 'package:flix/presentation/widgets_common/custom_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SreenCommingSoon extends StatelessWidget {
  const SreenCommingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        itemBuilder: (context, index) => Row(
          children: [
            SizedBox(
              width: 45,
              height: 300,
              child: Column(
                children: [
                  Text(
                    "FEB",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "11",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        letterSpacing: 9,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
                width: size.width - 71,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          width: size.width - 71,
                          height: size.height * .24,
                          child: Image.network(
                            posters[4],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 2,
                          right: 2,
                          child: CircleAvatar(
                              radius: 19,
                              backgroundColor: backgroundColor,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(CupertinoIcons.volume_off))),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "TALL GIRL 2",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: .1),
                        ),
                        Spacer(),
                        CustomIcons(
                            icon: Icons.notifications, text: "Notification me"),
                        CustomIcons(icon: Icons.info, text: "info")
                      ],
                    ),
                    const Text(
                      "Comming on Friday",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    height,
                    const Text(
                      "Tall Girl 2",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    height,
                    Text(
                      "After Jodi Kreyman gains popularity, her miscommuni-  cations start causing rifts with those around her and now she really needs to 'stand tall'.",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    height
                  ],
                ))
          ],
        ),
        itemCount: 10,
      ),
    );
  }
}
