import 'package:dio/dio.dart';

Dio dio(){
var dio=Dio();
dio.options.baseUrl = 'https:poolus.biz/api';
dio.options.headers['accept']='Application/Json';
dio.options.connectTimeout = 5000; //5s
dio.options.receiveTimeout = 3000;
return dio;
}
