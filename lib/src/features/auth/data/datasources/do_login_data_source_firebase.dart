import 'package:cleanarchitecture/src/features/auth/data/datasources/do_login_data_source.dart';
import 'package:cleanarchitecture/src/features/auth/data/models/user_model.dart';

class DoLoginDataSourceFirebase implements DoLoginDataSource {
  // final FirebaseAuth _auth;

  // DoLoginDataSourceFirebase(this._auth);

  @override
  Future<UserModel> doLogin({
    required String email,
    required String password,
  }) {
    // TODO: implement doLogin
    throw UnimplementedError();
  }
}
