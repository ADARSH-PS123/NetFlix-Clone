import 'package:flix/core/colors.dart';
import 'package:flix/core/constants.dart';
import 'package:flix/presentation/new&hot/widgets/comming_soon.dart';
import 'package:flix/presentation/new&hot/widgets/every_ones_watching.dart';

import 'package:flix/presentation/widgets_common/topbar.dart';
import 'package:flutter/material.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: DefaultTabController(
        length: 2,
        child: Column(children: [
          TopBar(
              prefix: const Text(
            "New & Hot",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )),
          height,
          SizedBox(
            height: 40,
            child: TabBar(
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: radius30,
                ),
                labelColor: backgroundColor,
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelColor: Colors.white,
                tabs: [
                  const Tab(
                    text: "🍿 Comming Soon",
                  ),
                  const Tab(
                    text: "👀 Everyone's Watching",
                  )
                ]),
          ),kheight2,
          const Expanded(
              child: const TabBarView(
                  children: [SreenCommingSoon(), EveryOnesWatching()]))
        ]),
      ),
    );
  }
}
