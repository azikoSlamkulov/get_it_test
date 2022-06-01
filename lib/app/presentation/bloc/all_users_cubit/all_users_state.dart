import 'package:equatable/equatable.dart';

import '../../../domain/etities/user_entity.dart';

abstract class AllUserState extends Equatable {
  const AllUserState();
  @override
  List<Object> get props => [];
}

class LoadingState extends AllUserState {}

class LoadedState extends AllUserState {
  final List<UserEntity> allUsers;
  const LoadedState(this.allUsers);
  @override
  List<Object> get props => [allUsers];
}

class LoadingFailureState extends AllUserState {
  final String message;
  const LoadingFailureState(this.message);
  @override
  List<Object> get props => [message];
}
