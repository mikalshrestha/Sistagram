import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/models/user_info.dart';
import '../../domain/repository/user_info_repo.dart';


class UserInfoListState extends StateNotifier<List<UserInfo>> {
  final UserRepository _repository;

  UserInfoListState({required UserRepository repository})
      : _repository = repository,
        super([]);

  Future<void> fetchUserList() async {
    try {
      state = await _repository.fetchUserList();
    } catch (error) {
      // handle error
    }
  }
}

final userInfoListStateProvider = StateNotifierProvider<UserInfoListState, List<UserInfo>>(
      (ref) => UserInfoListState(repository: ref.watch(userRepositoryProvider)),
);
