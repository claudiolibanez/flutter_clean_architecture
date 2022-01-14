import 'package:cleanarchitecture/src/features/auth/data/datasources/do_login_data_source.dart';
import 'package:cleanarchitecture/src/features/auth/data/datasources/do_login_data_source_api.dart';
import 'package:cleanarchitecture/src/features/auth/data/repositories/do_login_repository_imp.dart';
import 'package:cleanarchitecture/src/features/auth/domain/repositories/do_login_repository.dart';
import 'package:cleanarchitecture/src/features/auth/domain/usecases/do_login.dart';
import 'package:cleanarchitecture/src/features/auth/presenters/controllers/login_controller.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final i = GetIt.instance;

class ContainerInjection {
  static void setup() {
    i.registerLazySingleton<Dio>(() => Dio());
    i.registerLazySingleton<DoLoginDataSource>(
        () => DoLoginDataSourceApi(i.get()));
    i.registerLazySingleton<DoLoginRepository>(
        () => DoLoginRepositoryImpl(i.get()));
    i.registerLazySingleton<DoLogin>(() => DoLogin(i.get()));
    i.registerFactory<LoginController>(() => LoginController(i.get()));
  }
}
