import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:flutter_starter/data/entities/request/login_params.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_starter/data/entities/account.dart';
import 'package:flutter_starter/data/sources/network/dio.dart';

part 'network.g.dart';

@singleton
@RestApi()
abstract class NetworkDataSource {
  @factoryMethod
  factory NetworkDataSource(NetworkDio dio) = _NetworkDataSource;

  @POST('/login')
  Future<Account> login(@Body() LoginParams params);

  @POST('/users/me')
  Future<Account> getCurrentAccount();
}
