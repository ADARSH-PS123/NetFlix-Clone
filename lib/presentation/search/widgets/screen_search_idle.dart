import 'package:cached_network_image/cached_network_image.dart';
import 'package:flix/application/search_bloc/search_bloc.dart';
import 'package:flix/core/constants.dart';

import 'package:flix/domain/core/debouncer.dart';
import 'package:flix/domain/core/strings.dart';

import 'package:flix/presentation/widgets_common/search_about.dart';
import 'package:flix/presentation/search/widgets/search_grid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

int page = 1;

class ScreenSearchIdle extends StatefulWidget {
  ScreenSearchIdle({Key? key}) : super(key: key);

  @override
  State<ScreenSearchIdle> createState() => _ScreenSearchIdleState();
}

class _ScreenSearchIdleState extends State<ScreenSearchIdle> {
  //debouncer will provide a delay while using text field
  final _debouncer = Debouncer(milliseconds: 700);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<SearchBloc>(context)
          .add(SearchEvent.initialize(page: "&page=$page"));
    });
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoTextField(
                onChanged: (query) async {
                  _debouncer.run(() {
                    if (query.isEmpty) {
                      BlocProvider.of<SearchBloc>(context)
                          .add(SearchEvent.initialize(page: '&page=$page'));
                    } else {
                      BlocProvider.of<SearchBloc>(context)
                          .add(SearchEvent.search(query: query));
                    }
                  });
                },
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
                prefix: const Padding(
                  padding: EdgeInsets.only(left: 8.0),
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
                placeholderStyle:
                    TextStyle(color: Colors.grey[350], fontSize: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.grey.withOpacity(0.4),
                ),
              ),
              kheight2,
              const WidgetAbout(text: "Movies & TV"),
              kheight2,
              Expanded(child: ListViews())
            ],
          ),
        );
      },
    );
  }
}

//this is idle widget
class ListViews extends StatelessWidget {
  ListViews({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        if (state.searchList.isNotEmpty) {
          return SearchGrid(
            resultList: state.searchList,
          );
        } else if (state.idleList.isNotEmpty) {
          return NotificationListener<UserScrollNotification>(
              onNotification: (scrolNotification) {
                //controlling the fetching by checking the number of items in the list currently has with page number,each page has 20 items in it
                if(page*20==state.idleList.length){
                if (scrolNotification.metrics.maxScrollExtent*.8<scrolNotification.metrics.pixels) {
                 //triger when 80% scroll completed
                    page = page + 1;
                    BlocProvider.of<SearchBloc>(context)
                        .add(SearchEvent.scroll(page: "&page=$page"));
                  
                  
                }} else {
                  return false;
                }
                return false;
              },
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (cxt, index) => state.idleList.length == index
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : ScreenListTile(
                          title: state.idleList[index].title ??
                              state.idleList[index].name ??
                              "Na",
                          posterPath: state.idleList[index].posterPath ??
                              "assets/images/flixlogo.jpeg",
                        ),
                  separatorBuilder: (cxt, index) => const SizedBox(
                        height: 7,
                      ),
                  itemCount: state.isScrolling
                      ? state.idleList.length + 1
                      : state.idleList.length));
        } else if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        //error
        else {
          return const Center(
            child: Text("Error Occured or result not found"),
          );
        }
      },
    );
  }
}

class ScreenListTile extends StatelessWidget {
  final String title, posterPath;

  const ScreenListTile({
    required this.title,
    required this.posterPath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
            margin: const EdgeInsets.only(right: 16, left: 8),clipBehavior: Clip.hardEdge,
            height: size.height * .085,
            width: size.width * .24,
            child: CachedNetworkImage(fit: BoxFit.cover,
              imageUrl: "$imageBaseUrl${posterPath}",
              placeholder: (context, url) => Center(child: CircularProgressIndicator(strokeWidth: 1,)),
              errorWidget: (context, url, error) => Icon(
                Icons.error,
              ),
            )),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8, right: 12),
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
