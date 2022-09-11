import 'package:intl/intl.dart';

String dateException(String date){

  try{

  return  DateFormat.MMM().format(
                          DateTime.parse(date  )
                          );

  }
  catch(e){
    return "00-00-0000";
  }
}