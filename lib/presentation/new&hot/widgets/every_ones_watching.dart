import 'package:flix/application/hotAndNew/hot/hot_bloc.dart';
import 'package:flix/core/colors.dart';
import 'package:flix/core/constants.dart';
import 'package:flix/domain/core/strings.dart';
import 'package:flix/presentation/downloads/widgets/screen_downloads.dart';
import 'package:flix/presentation/widgets_common/custom_icon.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';

class EveryOnesWatching extends StatelessWidget {
  const EveryOnesWatching({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<HotBloc>(context).add(const HotEvent.Stated());
    });
    final size = MediaQuery.of(context).size;
    return BlocBuilder<HotBloc, HotState>(
      builder: (context, state) {
        if(state.isError){
          return const Center(child: Text("Error Occured"),);
        }
        else if(state.results.isNotEmpty){


          return


           ListView.builder(
          itemCount: state.results.length,
          itemBuilder: (BuildContext context,int index){
            return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              height,
              Text(
                state.results[index].originalTitle.toString(),
                style:const  TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              height,
              Text(
                state.results[index].overview.toString(),
                style:const  TextStyle(color: Colors.grey, fontSize: 12),
              ),
              kheight2,
              kheight2,
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: size.height * .24,
                    child: Image.network(imageBaseUrl+state.results[index].posterPath.toString()
                  ,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 2,
                    right: 9,
                    child: CircleAvatar(
                        radius: 17,
                        backgroundColor: backgroundColor,
                        child: IconButton(
                            onPressed: () {},
                            icon:const Icon(
                              CupertinoIcons.volume_off,
                              size: 17,
                            ))),
                  ),
                ],
              ),
              Row(
                children: [
                const  Spacer(),
                  GestureDetector(
                    child: const CustomIcons(
                        icon: CupertinoIcons.share_solid, text: "Share"),
                    onTap: () {},
                  ),
                  GestureDetector(
                    child: const CustomIcons(icon: CupertinoIcons.add, text: "Add"),
                    onTap: () {},
                  ),
                  GestureDetector(
                    child: const CustomIcons(
                        icon: CupertinoIcons.play_arrow_solid, text: "Play"),
                    onTap: () {},
                  )
                ],
              )
            ],
          );
          });
        }
        else{
        return const Center(child: CircularProgressIndicator(),);
        }
        
        
        
    
      }
    );
  }
}
