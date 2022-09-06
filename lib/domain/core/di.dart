

import 'package:flix/infrastructure/search/searchRepo.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

 
@injectableInit
GetIt getIt= GetIt.instance;
Future<void>configureInjection()async{
  await $initGetIt(getIt,environment:Environment.prod);
  getIt.registerSingleton<SearchRepo>(SearchRepo());



}

