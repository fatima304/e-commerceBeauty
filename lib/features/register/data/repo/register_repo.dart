import 'package:beauty_ecommerce/features/register/data/user_model.dart';
import 'package:dio/dio.dart';

class AuthRepository {
  final Dio _dio = Dio();

  Future<void> signUp(User user) async {
    final url = 'https://food-api-omega.vercel.app/api/v1/user/signup';

    try {
      final response = await _dio.post(url, data: user.toJson());
      print(response.data); // Print or handle the response data
    } on DioException catch (e) {
      throw e.response?.data ?? "Signup failed";
    }
  }
}
