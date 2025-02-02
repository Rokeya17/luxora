import 'api_response.dart';
import 'package:pretty_http_logger/pretty_http_logger.dart';

class ApiServices {
  HttpWithMiddleware http =
      HttpWithMiddleware.build(middlewares: [HttpLogger()]);
  Future<ApiResponse> get(
      {required String url, required Map<String, String>? headers}) async {
    final uri = Uri.parse(url);

    final response = await http.get(
      uri,
      headers: headers,
    );
    return ApiResponse(response.statusCode, response.body,
        response.reasonPhrase ?? '', response.headers);
  }


  Future<ApiResponse>post({required String url,  Map<String ,String>? headers,dynamic body,}) async 
  {
    final uri = Uri.parse(url);
    final response = await http.post(uri,headers:headers,body:body );
    return ApiResponse(response.statusCode, response.body, response.reasonPhrase??'', response.headers);
    
  }
}
