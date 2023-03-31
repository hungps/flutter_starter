import 'package:flutter_starter/data/sources/network/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'network.g.dart';

@RestApi()
abstract class NetworkDataSource {
  factory NetworkDataSource(NetworkDio dio, {String baseUrl}) = _NetworkDataSource;

  // @POST(NetworkUrls.login)
  // Future login(@Query('username') String username, @Query('password') String password);
}
