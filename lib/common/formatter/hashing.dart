import 'dart:convert'; // Untuk utf8.encode
import 'package:crypto/crypto.dart'; // Untuk sha256

String hashString(String input) {
  var bytes = utf8.encode(input);

  var digest = sha256.convert(bytes);

  return "Pass_${digest.toString()}1";
}
