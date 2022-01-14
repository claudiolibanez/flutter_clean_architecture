import 'package:cleanarchitecture/src/features/auth/data/models/user_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();
  });

  test('should convert model to map', () {
    UserModel model = const UserModel(
      name: "Test Name",
      email: "email@email.com",
    );

    Map<String, dynamic> map = model.toMap();

    expect(map, tkUserApi);
  });

  test('should convert model to json', () async {
    UserModel model = const UserModel(
      name: "Test Name",
      email: "email@email.com",
    );

    String data = await rootBundle.loadString('assets/mock/user.json');

    String userJson = model.toJson();

    UserModel user = UserModel.fromJson(data);

    expect(user.toJson(), userJson);
  });

  test('should convert model from json', () async {
    UserModel model = const UserModel(
      name: "Test Name",
      email: "email@email.com",
    );

    String data = await rootBundle.loadString('assets/mock/user.json');

    UserModel userJson = UserModel.fromJson(data);

    expect(userJson, model);
  });

  test('should convert model from map', () async {
    UserModel model = const UserModel(
      name: "Test Name",
      email: "email@email.com",
    );

    UserModel userMap = UserModel.fromMap(tkUserApi);

    expect(userMap, model);
  });
}

var tkUserApi = {
  "name": "Test Name",
  "email": "email@email.com",
};
