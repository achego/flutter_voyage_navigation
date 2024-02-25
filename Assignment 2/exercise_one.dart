class Password {
  final String value;
  const Password(this.value);

  @override
  String toString() {
    print(value);
    return super.toString();
  }

  bool isValid(String password) {
    if (password.length > 8) {
      return true;
    } else {
      return false;
    }
  }
}
