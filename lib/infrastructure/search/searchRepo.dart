import 'package:dio/dio.dart';
import 'package:flix/domain/core/apiEndPoints.dart';
import 'package:flix/domain/core/mainFailures.dart';
import 'package:dartz/dartz.dart';
import 'package:flix/domain/search/IsearchRepo.dart';
import 'package:flix/domain/search/models/search/Search.dart';
import 'package:injectable/injectable.dart';


@LazySingleton(as:ISearchRepo )
class SearchRepo implements ISearchRepo{
  @override
  Future<Either<MainFailure,SearchResp >> getSearchResults({required String query})async {
    try{
final Response response=await Dio(BaseOptions()).get(ApiEndPoints.search,queryParameters:{ 'query':query});




if(response.statusCode==200||response.statusCode==201){
  final result=SearchResp.fromJson(response.data);
 //print(result.results[0].title);
  return Right(result);
}
else{
  return const Left(MainFailure.serverFailure());
}

  }
  catch(e){
    
    return const Left(MainFailure.clinrFailure());
  }
  
   
  }
  
}



