import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {
  Widget prefix;
   TopBar({Key? key,required this.prefix}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:8.0,left: 8),
      child: Row(children: [
        prefix,
        Spacer(),
        Icon(
          Icons.cast,
          color: Colors.white,
        ),
        Container(
          margin: EdgeInsets.only(left: 16,),
          width: 20,
          height: 20,
          color: Colors.blueAccent,
        )
      ]),
    );
  }
}
