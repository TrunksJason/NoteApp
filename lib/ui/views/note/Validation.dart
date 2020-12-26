class Validation {
  static String validationPass(String pass) {
    if (pass == null) {
      return "Mat Khau khong hop le!";
    }
    if (pass.length < 6) {
      return "Mat khau can lon hon 6 ki tu.";
    }
    return null;
  }

  static String validationEmail(String email) {
    if (email == null) {
      return "Email khong hop le";
    }
    var isValid =
        RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9] +\.[a-zA-Z0-9]+").hasMatch(email);
    if (!isValid) {
      return "Email khong hop le!";
    }
    return null;
  }
}
