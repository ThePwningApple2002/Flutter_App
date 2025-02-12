class ApiResponse {
  final String message;
  final int id;

  ApiResponse({required this.message, required this.id});

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      message: json['message'] ?? '',
      id: json['id'] ?? 0,
    );
  }
}
