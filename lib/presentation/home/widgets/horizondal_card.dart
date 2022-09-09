import 'package:flix/presentation/downloads/widgets/screen_downloads.dart';
import 'package:flix/presentation/widgets_common/search_about.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Row(
            children: List.generate(
                10,
                (index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                              image: NetworkImage(posters[0]),
                              fit: BoxFit.fill)),
                      height: size.height * .26,
                      width: size.width * .26,
                    )),
          ),
        ],
      ),
    );
  }
}
