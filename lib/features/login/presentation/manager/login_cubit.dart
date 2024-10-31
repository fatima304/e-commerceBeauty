import 'package:beauty_ecommerce/features/login/data/repo/login_repo.dart';
import 'package:beauty_ecommerce/features/login/data/user_model.dart';
 import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository loginRepository;

  LoginCubit(this.loginRepository) : super(LoginInitial());

  Future<void> signIn(String email, String password) async {
    emit(LoginLoading());
    try {
      await loginRepository.signIn(UserLogin(email: email, password: password));
      emit(LoginSuccess());
    } catch (error) {
      emit(LoginError(error.toString()));
    }
  }
}
