
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/domain/models/user_info.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../vm/user_info_vm.dart';

class NotificationWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        home: UserInfoListScreen(),
      ),
    );
  }
}

class UserInfoListScreen extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(userInfoListStateProvider.notifier).fetchUserList();

    final userInfoListState = ref.watch(userInfoListStateProvider);
    print(userInfoListState);
    return ListView.builder(
      itemCount: userInfoListState.length,
      itemBuilder: (context, index) {
        final userInfo = userInfoListState[index];
        return ListTile(
          title: Text(userInfo.username),
          subtitle: Text(userInfo.profileImage),
        );
      },
    );
  }
}

class UserInfoWidget extends ConsumerStatefulWidget {
  @override
  _UserInfoWidgetState createState() => _UserInfoWidgetState();
}

class _UserInfoWidgetState extends ConsumerState<UserInfoWidget> {
  final userInfoListState = [];

  @override
  void initState() {
    ref
        .read(userInfoListStateProvider.notifier)
        .fetchUserList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Consumer(builder: (context, ref, child) {
      final state = ref.watch(userInfoListStateProvider);
      List<UserInfo> userInfoListState = state;
      if (userInfoListState.isEmpty) {
        return CircularProgressIndicator();
      }
      return Scaffold(
        backgroundColor: Colors.orange,
        body:   SafeArea(
          child: SingleChildScrollView(
            child:  Container(
              height: 100, // Set the desired height for the story list
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: userInfoListState.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 80, // Set the desired width for each story item
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        Container(
                          width: 60, // Set the desired width for the story image
                          height: 60, // Set the desired height for the story image
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                userInfoListState[index].profileImage,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          userInfoListState[index].username,
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      );;
    });
  }

}