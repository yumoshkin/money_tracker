import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthStateInitial());

  Future<bool> signin(
    String email,
    String password,
  ) async {
    var errorText = '';

    try {
      emit(const AuthStateInitial());

      final userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (userCredential.user != null) {
        emit(AuthStateSuccess(user: userCredential.user));
        return true;
      } else {
        return false;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        errorText = 'Этот e-mail не зарегистрирован';
      } else if (e.code == 'wrong-password') {
        errorText = 'Неправильный пароль';
      } else {
        errorText = e.message.toString();
      }

      emit(AuthStateError(error: errorText));
      return false;
    }
  }

  Future<bool> signup(
    String email,
    String password,
  ) async {
    emit(const AuthStateInitial());

    UserCredential? userCredential;
    var errorText = '';

    try {
      userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (userCredential.user != null) {
        emit(AuthStateSuccess(user: userCredential.user));
        return true;
      } else {
        return false;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        errorText = 'Этот e-mail уже зарегистрирован';
      } else {
        errorText = e.message.toString();
      }

      emit(AuthStateError(error: errorText));
      return false;
    }
  }

  Future<void> sendEmailVerification() async {
    final user = FirebaseAuth.instance.currentUser!;
    emit(AuthStateInitial(user: user));

    await user.sendEmailVerification();

    emit(const AuthStateSendEmailVerification());
  }

  Future<void> resetPassword(
    String email,
  ) async {
    var errorText = '';
    emit(const AuthStateInitial());

    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      emit(
        const AuthStateResetPassword(
            message: 'Письмо для сброса пароля отправлено на ваш e-mail'),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        errorText = 'Этот e-mail не зарегистрирован';
      } else {
        errorText = e.message.toString();
      }

      emit(AuthStateError(error: errorText));
    }
  }

  Future<void> signout() async {
    emit(AuthStateInitial(user: FirebaseAuth.instance.currentUser));
    await FirebaseAuth.instance.signOut();
    emit(const AuthStateDisconnect());
  }

  void setUser(User? user) {
    emit(AuthStateInitial(user: FirebaseAuth.instance.currentUser));
    emit(AuthStateSuccess(user: user));
  }
}
