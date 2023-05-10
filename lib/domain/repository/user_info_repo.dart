import 'package:dio/dio.dart';
import 'package:flutter_practice/data/user_info_repo_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/user_info.dart';

abstract class UserRepository {
  Future<List<UserInfo>> fetchUserList();
}

final userRepositoryProvider = Provider<UserRepository>((ref) => UserInfoRepoImpl(dio: Dio()));
