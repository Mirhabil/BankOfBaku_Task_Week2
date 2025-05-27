import 'package:flutter/cupertino.dart';

void main() {
  Validator(()=>checkUserRole(UserRole.User)!);
}

enum UserRole {
  Admin,
  User,
  Guest
}

String? checkUserRole(UserRole? userRole) {
  switch (userRole) {
    case UserRole.Admin:
      return "Admin";
    case UserRole.User:
      return "User";
    case UserRole.Guest:
      return "Guest";
    default:
      return null;
  }
}

void Validator(String Function() resultFunction) {
  String result=resultFunction();
  switch (result) {
    case "Admin":
      print("This is Admin");
      break;
    case "User":
      print("This is User");
      break;
    case "Guest":
      print("This is Guest");
      break;
    default:
      print("Null");
      break;
  }
}


extension CapitalizeStringFirstLetter on String{

  String capitalize() {
    String newString = "";
    if (this.isEmpty) return "";

    for (int i = 1; i < this.length; i++) {
      newString += this[i];
    }
    return this[0].toUpperCase() + newString;
  }
}