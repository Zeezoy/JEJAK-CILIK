abstract class AuthEvent {}

class LoginWithGoogle extends AuthEvent {}

class LoginWithEmail extends AuthEvent {
  final String email;
  final String password;

  LoginWithEmail(this.email, this.password);
}