import 'package:flix/domain/core/strings.dart';
import 'package:flix/domain/downloads/downloadReop.dart';
import 'package:flix/domain/search/models/search/Search.dart';
import 'package:flix/presentation/downloads/widgets/screen_downloads.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchGrid extends StatelessWidget {
  final List<SearchResultData> resultList;

  const SearchGrid({Key? key, required this.resultList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: .9 / 1.25,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      crossAxisCount: 3,
      children: List.generate(
          resultList.length,
          (index) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(
                        image: NetworkImage(
                            "$imageBaseUrl${resultList[index].posterPath}"),
                        fit: BoxFit.cover)),
              )),
    );
  }
}
