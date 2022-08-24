import 'package:flix/presentation/fastlaughs/widgets/screen_page_view_child.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenPAgeview extends StatelessWidget {
  const ScreenPAgeview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children:List.generate(10, (index) => ScreenPageViewChaild(index: index))
    );
  }
}