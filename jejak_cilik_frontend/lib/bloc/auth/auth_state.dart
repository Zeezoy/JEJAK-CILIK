class AuthBlocState {

  final bool loading;
  final bool authenticated;

  AuthBlocState({
    this.loading = false,
    this.authenticated = false,
  });

}