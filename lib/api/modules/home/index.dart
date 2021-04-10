import "package:task_app/api/http/http.dart";

Future getBanner() async {
   var responseJson  = await dio.get('banner', queryParameters: {});
   return responseJson.data; 
}