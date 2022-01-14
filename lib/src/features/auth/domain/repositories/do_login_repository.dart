import 'package:cleanarchitecture/src/core/error/failure.dart';
import 'package:cleanarchitecture/src/features/auth/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

abstract class DoLoginRepository {
  Future<Either<Failure, User>> doLogin({
    required String email,
    required String password,
  });
}
