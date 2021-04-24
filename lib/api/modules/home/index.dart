import "package:task_app/api/http/http.dart";

Future getBanner() async {
   var responseJson  = await dio.get('banner', queryParameters: {});
   return responseJson.data; 
}

Future getShopList(params) async {
   var responseJson  = await dio.get('tasks', queryParameters: params);
   return responseJson.data; 
}