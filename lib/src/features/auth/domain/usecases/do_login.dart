import 'package:dartz/dartz.dart';

import 'package:cleanarchitecture/src/core/error/failure.dart';
import 'package:cleanarchitecture/src/core/usecase/use_case.dart';
import 'package:cleanarchitecture/src/features/auth/domain/entities/user.dart';
import 'package:cleanarchitecture/src/features/auth/domain/repositories/do_login_repository.dart';

class DoLoginParams {
  final String email;
  final String password;

  DoLoginParams({
    required this.email,
    required this.password,
  });
}

class DoLogin extends UseCase<User, DoLoginParams> {
  final DoLoginRepository _repository;

  DoLogin(this._repository);

  @override
  Future<Either<Failure, User>> call(
    DoLoginParams params,
  ) async {
    return await _repository.doLogin(
      email: params.email,
      password: params.password,
    );
  }
}
