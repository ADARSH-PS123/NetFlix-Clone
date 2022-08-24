import 'package:flix/presentation/downloads/widgets/screen_downloads.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchGrid extends StatelessWidget {
  const SearchGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: .9/1.25,mainAxisSpacing: 8,crossAxisSpacing: 8,
      crossAxisCount: 3,
      children: List.generate(
          50,
          (index) => Container(
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(4),
                    image: DecorationImage(
                        image: NetworkImage(
                          posters[0],
                        ),
                        fit: BoxFit.cover)),
              )),
    );
  }
}
