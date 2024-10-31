import 'package:beauty_ecommerce/features/login/data/user_model.dart';
 import 'package:dio/dio.dart';
 
class LoginRepository {
  final Dio _dio = Dio();

  Future<void> signIn(UserLogin user) async {
    final url = 'https://dummyjson.com/auth/login';

    try {
      final response = await _dio.post(url, data: user.toJson());
      print(response.data); 
    } on DioError catch (e) {
      throw e.response?.data ?? "Login failed";
    }
  }
}
