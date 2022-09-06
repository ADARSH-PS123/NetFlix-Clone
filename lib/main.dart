import 'package:flix/application/download/downloads_bloc.dart';
import 'package:flix/application/search_bloc/search_bloc.dart';
import 'package:flix/core/colors.dart';
import 'package:flix/domain/core/di.dart';
import 'package:flix/presentation/main_page/widgets/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';


Future <void> main() async{
    WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (cxt)=>
         getIt<DownloadsBloc>()
      ),BlocProvider(create: (cxt)=>getIt<SearchBloc>())
      ],
      child: MaterialApp(
          theme: ThemeData(
              fontFamily: GoogleFonts.montserrat().fontFamily,
              scaffoldBackgroundColor: backgroundColor,
              backgroundColor: backgroundColor,
              textTheme:const TextTheme(
                bodyText1: TextStyle(color: Colors.white),bodyText2:  TextStyle(color: Colors.white),
              )),
          debugShowCheckedModeBanner: false,
          home: SafeArea(child: Main_Page())),
    );
  }
}
