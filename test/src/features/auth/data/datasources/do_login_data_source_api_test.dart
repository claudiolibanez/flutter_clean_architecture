import 'package:cleanarchitecture/src/core/error/failure.dart';
import 'package:cleanarchitecture/src/features/auth/data/datasources/do_login_data_source.dart';
import 'package:cleanarchitecture/src/features/auth/data/datasources/do_login_data_source_api.dart';
import 'package:cleanarchitecture/src/features/auth/data/models/user_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class DioMock extends Mock implements Dio {}

void main() {
  Dio _dio = DioMock();
  DoLoginDataSource _dataSource = DoLoginDataSourceApi(_dio);

  test('should do login on API', () async {
    when(
      () => _dio.post(
        any(),
        data: {
          "email": "email@email.com",
          "password": "123456",
        },
      ),
    ).thenAnswer(
      (_) => Future.value(
        Response(
          requestOptions: RequestOptions(path: ''),
          data: tkUserApi,
        ),
      ),
    );

    UserModel user = await _dataSource.doLogin(
      email: "email@email.com",
      password: "123456",
    );

    expect(user.toMap(), tkUserApi);

    verify(
      () => _dio.post(
        any(),
        data: {
          "email": "email@email.com",
          "password": "123456",
        },
      ),
    ).called(1);

    verifyNoMoreInteractions(_dio);
  });

  test('should get error when try do login with api', () async {
    when(
      () => _dio.post(
        any(),
        data: {
          "email": "email@email.com",
          "password": "123456",
        },
      ),
    ).thenThrow(
      ServerFailure(),
    );

    expect(
      () async => await _dataSource.doLogin(
        email: "email@email.com",
        password: "123456",
      ),
      throwsA(isA<ServerFailure>()),
    );

    verify(
      () => _dio.post(
        any(),
        data: {
          "email": "email@email.com",
          "password": "123456",
        },
      ),
    ).called(1);

    verifyNoMoreInteractions(_dio);
  });
}

var tkUserApi = {
  "name": "Test Name",
  "email": "email@email.com",
};
