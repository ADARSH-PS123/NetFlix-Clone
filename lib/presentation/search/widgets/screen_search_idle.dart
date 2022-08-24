import 'package:flix/core/constants.dart';
import 'package:flix/presentation/downloads/widgets/screen_downloads.dart';
import 'package:flix/presentation/widgets_common/search_about.dart';
import 'package:flix/presentation/search/widgets/search_grid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenSearchIdle extends StatelessWidget {
  const ScreenSearchIdle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CupertinoTextField(style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            prefix: const Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(
                CupertinoIcons.search,
                color: Colors.white30,
                size: 17,
              ),
            ),
            suffix: const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.cancel,
                color: Colors.white30,
                size: 17,
              ),
            ),
            placeholder: "Search",
            placeholderStyle: TextStyle(color: Colors.grey[350], fontSize: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.grey.withOpacity(0.4),
            ),
          ),
          kheight2,
          WidgetAbout(text: "Movies & TV"),
          kheight2,
          Expanded(child:SearchGrid() )
        ],
      ),
    );
  }
}


class ListViews extends StatelessWidget {
  const ListViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (cxt, index) => ScreenListTile(),
        separatorBuilder: (cxt, index) => SizedBox(
              height: 7,
            ),
        itemCount: 100);
  }
}


class ScreenListTile extends StatelessWidget {
  const ScreenListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return
    Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
              margin: EdgeInsets.only(right: 9),
                    height: size.height * .085,
                    width: size.width * .24,
                    decoration: BoxDecoration(
                      
                       image: DecorationImage(image: NetworkImage(posters[0]),fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(4))),
             const   Expanded(
                  child: Text(
                    "Textbhghgggcbvcb",
                    style: TextStyle(fontWeight: FontWeight.bold),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8,right: 12),
                  child: Icon(
                    CupertinoIcons.play_circle,
                    color: Colors.white,
                    size: 32,
                  ),
                )
              ],
            );
  }
}