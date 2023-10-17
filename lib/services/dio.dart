import 'package:dio/dio.dart';

Dio dio(){
var dio=Dio();
dio.options.baseUrl = 'https:poolus.biz/api';
dio.options.headers['accept']='Application/Json';
dio.options.connectTimeout = const Duration(seconds: 5); //5s
dio.options.receiveTimeout = const Duration(seconds: 3);
return dio;
}
