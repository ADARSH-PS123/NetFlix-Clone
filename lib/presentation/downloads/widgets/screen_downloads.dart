import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flix/application/download/downloads_bloc.dart';
import 'package:flix/core/constants.dart';
import 'package:flix/domain/core/mainFailures.dart';
import 'package:flix/domain/core/strings.dart';
import 'package:flix/presentation/widgets_common/topbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/search_bloc/search_bloc.dart';

final posters = [
  'https://www.kerala9.com/wp-content/uploads/2022/04/nna-thaan-case-kodu-movie-poster.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTevST-wklZlPCowJgEMJTG0nh2EQvj1MiwNA&usqp=CAU',
  'https://images.complex.com/complex/image/upload/c_fill,dpr_auto,f_auto,fl_lossy,g_face,q_auto,w_1280/wjnhpz3osrai5aningjl.jpg',
  'https://www.indiewire.com/wp-content/uploads/2019/12/JokerPoster1200_5ca3c435318d42.29270548.jpg?w=800',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTufhctoruHUj_cgRDRjvNIDPyOK3uICas50g&usqp=CAU',
  'https://filestore.community.support.microsoft.com/api/images/555d998c-a676-43b9-a719-cc00c3c9dd59?upload=true'
];

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: TopBar(
                prefix: const Text(
              "Downloads",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
          ),
          body: ListView(
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  height,kheight2,
                  Row(
                    children: const [
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8, right: 4),
                        child: Text(
                          "Smart Downloads",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      )
                    ],
                  ),
                  kheight2,kheight2,height,
            
                  const Center(
                    child: Text(
                      "Introducing Downloads for You",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  kheight2,
                  const Center(
                    child: Text(
                        style: TextStyle(color: Colors.grey),
                        "We'll download a personosed section of\n   movies and shows for you, so there's\n    always something to watch on your\n                             device"),
                  ),
                  kheight2,kheight2,
                  const Section2(),
                 kheight2,
                  const Section3()
                ],
              )
            ],
          )),
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadImages());
    });
    

    final size = MediaQuery.of(context).size;
    return BlocBuilder<DownloadsBloc, DownloadsState>(
      builder: (context, state) {
       
    
        return Stack(
          alignment: Alignment.topCenter,
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey.shade800,
              radius: size.width * .25,
            ),
            Padding(
              padding: EdgeInsets.only(top: 55, right: size.width * .3),
              child: Transform.rotate(
                  angle: -pi * 23 / 180,
                  child: state.isLoading
                      ? const CircularProgressIndicator()
                      : Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              image:  DecorationImage(
                                  image:state.optonFailureSuccess== Some(Left(MainFailure.clinrFailure()))?
                                   const AssetImage("assets/images/flixlogo.jpeg") as ImageProvider:  NetworkImage(
                                   "$imageBaseUrl${state.downloads[1].posterPath}"
                                        )  ,
                                  fit: BoxFit.fill)),
                          height: size.width * .32,
                          width: size.width * .25,
                        )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 55, left: size.width * 0.3),
              child: Transform.rotate(
                angle: pi * 20 / 180,
                child: state.isLoading
                    ? const CircularProgressIndicator()
                    : Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image:
                            DecorationImage(
                       
                                image:  state.optonFailureSuccess==Some(Left(MainFailure.clinrFailure())) ?
                            AssetImage("assets/images/flixlogo.jpeg") as ImageProvider:
                              NetworkImage(
                                        "$imageBaseUrl${state.downloads[0].posterPath}")

                                    , 
                                fit: BoxFit.fill)),
                        height: size.width * .32,
                        width: size.width * .25,
                      ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.2, left: 0),
              child: Transform.rotate(
                angle: 0,
                child: state.isLoading
                    ? const CircularProgressIndicator()
                    : Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image:  DecorationImage(
                       
                                image:  state.optonFailureSuccess==Some(Left(MainFailure.clinrFailure())) ?
                            AssetImage("assets/images/flixlogo.jpeg") as ImageProvider:
                              NetworkImage(
                                        "$imageBaseUrl${state.downloads[2].posterPath}")

                                    , 
                                fit: BoxFit.fill)),
                        height: size.width * .39,
                        width: size.width * .256,
                      ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      
      children: [
        const SizedBox(
          height: 70,
        ),
        MaterialButton(
          minWidth: size.width * .8,
          onPressed: () {},
          child: const Text(
            "Set Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          color: Colors.indigo[500],
        ),khalfHeight,
        MaterialButton(
          minWidth: size.width * .7,
          onPressed: () {},
          child: const Text("See What You Can Download",
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold)),
          color: Colors.white,
        )
      ],
    );
  }
}
