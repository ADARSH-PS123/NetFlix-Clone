import 'package:flix/core/colors.dart';
import 'package:flix/presentation/downloads/widgets/screen_downloads.dart';
import 'package:flix/presentation/fastlaughs/screen_fast_lough.dart';
import 'package:flix/presentation/home/screen_home.dart';
import 'package:flix/presentation/new&hot/screen_new_hot.dart';
import 'package:flix/presentation/search/widgets/screen_search.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

ValueNotifier<int> notifierNavIndex = ValueNotifier(0);

class Main_Page extends StatelessWidget {
   Main_Page({Key? key}) : super(key: key);
final screens=[ScreenHome(),ScreenNewAndHot(),ScreenFastLaughs(),ScreenSearch(),ScreenDownloads()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: ValueListenableBuilder(builder: (BuildContext cot,int index,_){
      return  screens[index];
      },valueListenable: notifierNavIndex,),
      bottomNavigationBar:ValueListenableBuilder(builder:(BuildContext cnt,newIndex,_){
        return  BottomNavigationBar(
         backgroundColor: backgroundColor,type:BottomNavigationBarType.fixed,
          currentIndex: notifierNavIndex.value,
          onTap: (index) {
            notifierNavIndex.value = index;
          },
          showUnselectedLabels: true,
          selectedFontSize: 12,
          unselectedFontSize: 10,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.collections,
                ),
                label: "New & Hot"),
            BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions), label: "Fast Laughs"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: "Downloads")
          ]);
      } ,valueListenable: notifierNavIndex,)
    );
  }
}
