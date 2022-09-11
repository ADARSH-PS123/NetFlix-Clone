import 'package:flix/application/hotAndNew/new/new_bloc.dart';
import 'package:flix/core/colors.dart';
import 'package:flix/core/constants.dart';
import 'package:flix/domain/core/dateException.dart';
import 'package:flix/domain/core/strings.dart';
import 'package:flix/presentation/downloads/widgets/screen_downloads.dart';
import 'package:flix/presentation/widgets_common/custom_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';


class SreenCommingSoon extends StatelessWidget {
  const SreenCommingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<NewBloc>(context).add(const NewEvent.started());
    });
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: BlocBuilder<NewBloc, NewState>(
        builder: (context, state) {
          if (state.isError) {
            return const  Center(
              child: Text("Error Occured"),
            );
          } else if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.results.isNotEmpty) {
         
            return ListView.builder(
              itemBuilder: (context, index) => Row(
                children: [
                  SizedBox(
                    width: 45,
                    height: 300,
                    child: Column(
                      children: [
                        Text(dateException(state.results[index].firstAirDate.toString())
                          ,
                          style:const TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                           state.results[index].firstAirDate!.length<8?"Na":  state.results[index].firstAirDate.toString().substring(8),
                         
                          style:const  TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              letterSpacing: 9,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                      width: size.width - 71,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                width: size.width - 71,
                                height: size.height * .24,
                                child: Image.network(imageBaseUrl+
                              state.results[index].posterPath.toString(),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                bottom: 2,
                                right: 2,
                                child: CircleAvatar(
                                    radius: 19,
                                    backgroundColor: backgroundColor,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon:const Icon(CupertinoIcons.volume_off))),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Text(
                                    
                                    state.results[index].originalName.toString(),
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: .1),maxLines: 1,
                                  ),
                                ),
                              ),const SizedBox(width: 8,),
                            
                            const  CustomIcons(
                                  icon: Icons.notifications,
                                  text: "Notification me"),
                             const CustomIcons(icon: Icons.info, text: "info")
                            ],
                          ),
                          const Text(
                            "Comming on Friday",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          height,
                           Text(
                            state.results[index].name.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold),
                          ),
                          height,
                          Text(
                           state.results[index].overview.toString(),
                            style:const  TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          kheight2,kheight2,kheight2
                        ],
                      ))
                ],
              ),
              itemCount: state.results.length,
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
