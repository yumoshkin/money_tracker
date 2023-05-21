import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit()
      : super(AuthStateInitial(user: FirebaseAuth.instance.currentUser));

  Future<bool> signin(
    String email,
    String password,
  ) async {
    var errorText = '';

    try {
      final userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (userCredential.user != null) {
        emit(AuthStateSuccess(user: userCredential.user));
      }
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        errorText = 'Этот адрес электронной почты не зарегистрирован';
      } else if (e.code == 'wrong-password') {
        errorText = 'Неправильный пароль';
      } else {
        errorText = e.message.toString();
      }

      emit(AuthStateError(error: errorText));
      return false;
    }
  }

  Future<void> signup(
    String email,
    String password,
  ) async {
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
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        errorText = 'Этот адрес электронной почты уже зарегистрирован';
      } else {
        errorText = e.message.toString();
      }

      emit(AuthStateError(error: errorText));
    }
  }

  Future<void> sendEmailVerification() async {
    final user = FirebaseAuth.instance.currentUser!;
    await user.sendEmailVerification();
    emit(const AuthStateSendEmailVerification());
  }

  Future<void> resetPassword(
    String email,
  ) async {
    var errorText = '';

    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      emit(
        const AuthStateResetPassword(
            message:
                'Письмо для сброса пароля отправлено на вашу электронную почту'),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        errorText = 'Этот E-mail не зарегистрирован';
      } else {
        errorText = e.message.toString();
      }

      emit(AuthStateError(error: errorText));
    }
  }

  Future<void> signout() async {
    await FirebaseAuth.instance.signOut();
    emit(const AuthStateDisconnect());
  }

  void setUser(User? user) {
    if (user != null) {
      emit(AuthStateSuccess(user: user));
    } else {
      emit(const AuthStateInitial());
    }
  }
}
