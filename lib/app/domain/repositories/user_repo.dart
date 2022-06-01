import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../etities/user_entity.dart';

abstract class UserRepo {
  Future<Either<Failure, UserEntity>> getUser({required String id});
  Future<Either<Failure, List<UserEntity>>> getAllUsers();
}
