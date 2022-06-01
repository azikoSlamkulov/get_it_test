import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/etities/user_entity.dart';
import '../../bloc/all_users_cubit/all_users_bloc.dart';
import '../../bloc/all_users_cubit/all_users_state.dart';
import '../../widgets/progress/progress.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllUsersCubit, AllUserState>(builder: (context, state) {
      List<UserEntity> users = [];
      if (state is LoadingState) {
        return progressIndicator.circularProgress();
      } else if (state is LoadedState) {
        users = state.allUsers;
      }
      return Scaffold(
        body: ListView.separated(
            itemBuilder: ((context, index) {
              return Text('${users[index].name}');
            }),
            separatorBuilder: (context, index) {
              return const Divider(
                color: Colors.black,
              );
            },
            itemCount: users.length),
      );
    });
  }
}
