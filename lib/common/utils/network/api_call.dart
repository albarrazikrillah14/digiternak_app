getHeader(String token) {
  late Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer $token'
  };

  return headers;
}
