import 'package:cryptowatch/core/models/login_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'client.g.dart';

//* Client class is responsible for handling all the network call methods.
@RestApi(baseUrl: "https://cryptowatch-server.herokuapp.com")
abstract class Client {
  factory Client(Dio dio, {String baseUrl}) = _Client;

  //* Annotations on the method and URL parameter decide how the request will be handled.
  //* There are some built-in annotations like GET, PUT, POST, PATCH, DELETE & HEADER.
  //* Add methods with annotations in ApiClient like below.

  @POST('/auth/login')
  Future<LoginResponse> userLogin(@Body() Map<String, dynamic> inputValue);
}
