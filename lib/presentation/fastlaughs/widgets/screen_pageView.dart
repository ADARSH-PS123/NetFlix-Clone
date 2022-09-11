import 'package:flix/application/fastLaugh/fast_laugh_bloc.dart';

import 'package:flix/presentation/fastlaughs/widgets/screen_page_view_child.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenPAgeview extends StatelessWidget {
  const ScreenPAgeview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<FastLaughBloc>(context)
          .add(const FastLaughEvent.starting());
    });
    return BlocBuilder<FastLaughBloc, FastLaughState>(
      builder: (context, state) {
        if (state.videos.isNotEmpty) {
          return PageView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext cxt, index) {
                return PageViewInheritedWidget(
                  widget: ScreenPageViewChaild(
                    key: Key(index.toString()),
                    index: index,
                  ),
                  video: state.videos[0].videos![index],
                );
              });
        } else if (state.isError) {
          return const Center(child: Text("Error occured"));
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
