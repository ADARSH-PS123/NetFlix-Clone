import 'package:flix/core/colors.dart';
import 'package:flix/core/constants.dart';
import 'package:flix/presentation/home/widgets/fullview.dart';
import 'package:flix/presentation/home/widgets/horizondal_card.dart';
import 'package:flix/presentation/home/widgets/numberCard.dart';
import 'package:flix/presentation/widgets_common/topbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../widgets_common/search_about.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext cxt, bool value, _) {
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8,
              ),
              child: NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final direction = notification.direction;
                  if (direction == ScrollDirection.idle) {
                    scrollNotifier.value = true;
               
                  } else if (direction == ScrollDirection.forward) {
                    scrollNotifier.value = true;
                
                  } else {
                    scrollNotifier.value = false;
                  
                  }

                  return true;
                },
                child: ListView(children: [
                  FullView(),
                  khalfHeight,
                  WidgetAbout(text: "Released in the Past Years"),
                  khalfHeight,
                  Cards(),
                  height,
                  WidgetAbout(text: "Trending Now"),
                  khalfHeight,
                  Cards(),
                  height,
                  WidgetAbout(text: "Top 10 TV Shows in India Today"),
                  khalfHeight,
                  NumberCard()
                ]),
              ),
            ),
            scrollNotifier.value
                ? AnimatedContainer(
                 
                    duration: const Duration(seconds: 0),
                    color: backgroundColor.withOpacity(.35),
                    height: MediaQuery.of(context).size.height * .11,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        TopBar(
                            prefix: Image.asset(
                          height: 40,
                          width: 20,
                          "assets/images/flixlogo.jpeg",
                          fit: BoxFit.cover,
                        )),
                        Positioned(
                          top: 30,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                  style: ButtonStyle(),
                                  onPressed: () {},
                                  child: Text(
                                    "TV Shows",
                                    style: TextStyle(color: Colors.white),
                                  )),
                              TextButton(
                                onPressed: () {},
                                child: Text("Movies",
                                    style: TextStyle(color: Colors.white)),
                              ),
                              Directionality(
                                textDirection: TextDirection.rtl,
                                child: TextButton.icon(
                                  onPressed: () {},
                                  label: Text("Categories",
                                      style: TextStyle(color: Colors.white)),
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ))
                : height
          ],
        );
      },
    );
  }
}
