class Utility {
  static String getUsername(String email) {
    return "live:${email.split('@')[0]}";
  }

  static String getInitials(String name) {
    List<String> nameSpilit = name.split(" ");
    String firstNameInitial = nameSpilit[0][0];
    String lastNameInitial = nameSpilit[1][0];
    return firstNameInitial + lastNameInitial;
  }
}
