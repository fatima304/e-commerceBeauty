import 'package:beauty_ecommerce/features/register/data/repo/register_repo.dart';
import 'package:beauty_ecommerce/features/register/data/user_model.dart';
import 'package:beauty_ecommerce/features/register/presentation/manager/register_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupState> {
  final AuthRepository authRepository;

  SignupCubit(this.authRepository) : super(SignupInitial());

  Future<void> signUp(String email, String password) async {
    emit(SignupLoading());
    try {
       User user = User(
        email: email,
        password: password,
      );

      await authRepository.signUp(user);
      emit(SignupSuccess());
    } catch (error) {
      emit(SignupError(error.toString()));
    }
  }
}

