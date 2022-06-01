import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';

import '../etities/user_entity.dart';
import '../repositories/user_repo.dart';

class GetAllUsers {
  final UserRepo userRepo;

  GetAllUsers(this.userRepo);

  Future<Either<Failure, List<UserEntity>>> getAllUsers() async {
    return await userRepo.getAllUsers();
  }
}
