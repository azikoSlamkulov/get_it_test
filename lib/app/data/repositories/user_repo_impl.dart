import 'package:dartz/dartz.dart';

import '../../core/error/exception.dart';
import '../../core/error/failure.dart';
import '../../domain/etities/user_entity.dart';
import '../../domain/repositories/user_repo.dart';
import '../services/remote_services/user_remote_services.dart';

class UserRepoImpl implements UserRepo {
  final UserRemoteServices userRemoteServices;

  UserRepoImpl({required this.userRemoteServices});

  @override
  Future<Either<Failure, List<UserEntity>>> getAllUsers() async {
    try {
      final _user = await userRemoteServices.getAllUsers();
      return Right(_user);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, UserEntity>> getUser({required String id}) async {
    try {
      final _user = await userRemoteServices.getAUser(id);
      return Right(_user);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
