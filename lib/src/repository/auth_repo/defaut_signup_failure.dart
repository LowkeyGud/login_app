class DefaultSignUpFailure {
  final String message;
  const DefaultSignUpFailure([this.message = "Error Occurred"]);

  factory DefaultSignUpFailure.code(String code) {
    switch (code) {
      case 'weak-pass':
        return const DefaultSignUpFailure('Enter more stronger password.');
      case 'invalid email':
        return const DefaultSignUpFailure('Email is not valid');
      default:
        return const DefaultSignUpFailure();
    }
  }
}
