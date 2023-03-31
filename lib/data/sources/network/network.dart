import 'package:dio/dio.dart';
import 'package:flutter_starter/data/entities/request/login_params.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_starter/data/entities/account.dart';
import 'package:flutter_starter/data/sources/network/dio.dart';
import 'package:flutter_starter/data/sources/network/urls.dart';

part 'network.g.dart';

@RestApi()
abstract class NetworkDataSource {
  factory NetworkDataSource(NetworkDio dio, {String baseUrl}) = _NetworkDataSource;

  @POST(NetworkUrls.login)
  Future<Account> login(@Queries() LoginParams params);

  @POST(NetworkUrls.usersMe)
  Future<Account> getCurrentAccount();
}
