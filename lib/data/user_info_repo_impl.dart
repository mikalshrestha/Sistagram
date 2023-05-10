import 'package:dio/dio.dart';

import '../domain/models/user_info.dart';
import '../domain/repository/user_info_repo.dart';

class UserInfoRepoImpl implements UserRepository {
  final Dio _dio;

  UserInfoRepoImpl({required Dio dio}) : _dio = dio;

  @override
  Future<List<UserInfo>> fetchUserList() async {
    final response = await _dio.get('http://10.13.168.252:7082/v1/stories');
    final data = response.data as List<dynamic>;
    return data.map((item) => UserInfo.fromJson(item)).toList();
  }
}
