import 'package:flix/application/fastLaugh/fast_laugh_bloc.dart';
import 'package:flix/core/colors.dart';

import 'package:flix/core/constants.dart';
import 'package:flix/domain/core/strings.dart';
import 'package:flix/domain/downloads/models/downlod.dart';
import 'package:flix/domain/fastLaugh/models/videos/videos.dart';
import 'package:flix/presentation/fastlaughs/widgets/videoPlayerScreen.dart';
import 'package:flix/presentation/widgets_common/custom_icon.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import '../../../core/colors.dart';

class PageViewInheritedWidget extends InheritedWidget {
  final Video video;
  final Widget widget;
  const PageViewInheritedWidget(
      {Key? key, required this.video, required this.widget})
      : super(key: key, child: widget);

  @override
  bool updateShouldNotify(PageViewInheritedWidget oldWidget) {
    return oldWidget.video != video;
  }

  static PageViewInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<PageViewInheritedWidget>();
  }
}

class ScreenPageViewChaild extends StatelessWidget {
  final int index;
  const ScreenPageViewChaild({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      VideoPlayerScreen(
        videoUrl:
            PageViewInheritedWidget.of(context)!.video.sources![0].toString(),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: CircleAvatar(
                radius: 19,
                backgroundColor: backgroundColor,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.volume_off))),
          ),
          ValueListenableBuilder(
              valueListenable: notifierLiked,
              builder: ((BuildContext context, Set<String> value, _) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    PageViewInheritedWidget.of(context)!
                                        .video
                                        .thumb
                                        .toString()))),
                      ),
                    ),
                    height,
                    InkWell(
                      onTap: () {
                        if (notifierLiked.value.contains(
                            PageViewInheritedWidget.of(context)!
                                .video
                                .title
                                .toString())) {
                          notifierLiked.value.remove(
                              PageViewInheritedWidget.of(context)!
                                  .video
                                  .title
                                  .toString());
                        } else {
                          notifierLiked.value.add(
                              PageViewInheritedWidget.of(context)!
                                  .video
                                  .title
                                  .toString());
                        }
                        notifierLiked.notifyListeners();
                      },
                      child: CustomIcons(
                        icon: Icons.emoji_emotions,
                        text: notifierLiked.value.contains(
                                PageViewInheritedWidget.of(context)!
                                    .video
                                    .title
                                    .toString())
                            ? "LIKED"
                            : "LIKE ME",
                      ),
                    ),
                    height,
                    const CustomIcons(
                      icon: Icons.add,
                      text: "LOL",
                    ),
                    height,
                    const CustomIcons(
                      icon: Icons.send_sharp,
                      text: "Share",
                    ),
                    height,
                    const CustomIcons(
                      icon: CupertinoIcons.play_arrow_solid,
                      text: "Play",
                    ),
                    khalfHeight,
                    kheight2
                  ],
                );
              }))
        ],
      ),
    ]);
  }
}
