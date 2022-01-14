import 'package:cleanarchitecture/src/features/auth/data/datasources/do_login_data_source.dart';
import 'package:cleanarchitecture/src/features/auth/data/datasources/do_login_data_source_firebase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  DoLoginDataSource _dataSource = DoLoginDataSourceFirebase();

  test("should get error when try do login with firebase", () async {
    expect(
      () async => await _dataSource.doLogin(
        email: "email@email.com",
        password: "123456",
      ),
      throwsA(
        isA<UnimplementedError>(),
      ),
    );
  });
}
