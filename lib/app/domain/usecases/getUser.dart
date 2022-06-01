// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';

// import '../../core/error/failure.dart';
// import '../../core/usecases/usecase.dart';
// import '../etities/user_entity.dart';
// import '../repositories/user_repo.dart';

// class GetUser extends UseCase<UserEntity, SmsCodeParams> {
//   final UserRepo userRepo;

//   GetUser(this.userRepo);

//   @override
//   Future<Either<Failure, UserEntity>> call(SmsCodeParams? params) async {
//     return await userRepo.getUser(
//       id: params!.id,
//     );
//   }
// }

// class SmsCodeParams extends Equatable {
//   final String id;

//   const SmsCodeParams({required this.id});

//   @override
//   List<Object?> get props => [id];
// }
