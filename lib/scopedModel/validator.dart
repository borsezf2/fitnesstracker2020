
String ValidateString(String value) {
  if (value.isEmpty) {
    // The form is empty
    return "This Entry is Required";
  }
  // This is just a regular expression for email addresses
  String p = "[a-zA-Z0-9\'\+\_\-]" ;
  RegExp regExp = new RegExp(p);
  print("in valid = "+value);
  if (regExp.hasMatch(value)) {
    // So, the email is valid
    return null;
  }

  // The pattern of the email didn't match the regex above.
  return 'Value is not Valid';
}

String ValidateString2(String value) {
  if (value.isEmpty) {
    // The form is empty
    return null;
  }
  // This is just a regular expression for email addresses
  String p = "[a-zA-Z0-9\'\+\_\-]" ;
  RegExp regExp = new RegExp(p);
  print("in valid = "+value);
  if (regExp.hasMatch(value)) {
    // So, the email is valid
    return null;
  }

  // The pattern of the email didn't match the regex above.
  return 'Value is not Valid';
}