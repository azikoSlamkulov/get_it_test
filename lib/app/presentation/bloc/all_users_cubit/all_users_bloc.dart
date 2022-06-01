import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases/get_all_users.dart';
import 'all_users_state.dart';

class AllUsersCubit extends Cubit<AllUserState> {
  final GetAllUsers getAllUsers;

  AllUsersCubit({
    required this.getAllUsers,
  }) : super(LoadingState());

  void loadAllUsers() async {
    if (state is LoadingState) {
      final _allUsers = await getAllUsers.getAllUsers();
      _allUsers.fold(
        (error) => emit(const LoadingFailureState('')),
        (_users) => emit(LoadedState(_users)),
      );
    }
  }
}
