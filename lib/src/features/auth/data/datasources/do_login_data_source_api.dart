import 'package:cleanarchitecture/src/core/error/failure.dart';
import 'package:cleanarchitecture/src/features/auth/data/datasources/do_login_data_source.dart';
import 'package:cleanarchitecture/src/features/auth/data/models/user_model.dart';
import 'package:dio/dio.dart';

class DoLoginDataSourceApi implements DoLoginDataSource {
  // final HttpClient _httpClient;

  // DoLoginDataSourceApi(this._httpClient);

  final Dio _dio;

  DoLoginDataSourceApi(this._dio);

  @override
  Future<UserModel> doLogin({
    required String email,
    required String password,
  }) async {
    try {
      return Future.value(
        UserModel.fromMap(tUserApi),
      );

      // var response = await _dio.post('http:/www.api.com/user', data: {
      //   "email": email,
      //   "password": password,
      // });

      //return UserModel.fromMap(response.data);
    } catch (err) {
      throw ServerFailure();
    }
  }
}

var tUserApi = {
  "name": "Test User",
  "email": "email@email.com",
};
