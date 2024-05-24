import 'dart:convert'; // Untuk utf8.encode
import 'package:crypto/crypto.dart'; // Untuk sha256

/// Fungsi untuk melakukan hashing dengan SHA-256
String hashString(String input) {
  // Mengonversi string input ke byte array
  var bytes = utf8.encode(input);

  // Menghitung hash dari byte array
  var digest = sha256.convert(bytes);

  // Mengembalikan hasil hash sebagai string heksadesimal
  return digest.toString();
}
