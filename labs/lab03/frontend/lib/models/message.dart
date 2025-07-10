class Message {
  final int id;
  final String username;
  final String content;
  final DateTime timestamp;

  const Message({
    required this.id,
    required this.username,
    required this.content,
    required this.timestamp
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'],
      username: json['username'],
      content: json['content'],
      timestamp: DateTime.parse(json['timestamp'])
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'content': content,
      'timestamp': timestamp.toIso8601String()
    };
  }
}

class CreateMessageRequest {
  final String username;
  final String content;

  const CreateMessageRequest({required this.username, required this.content});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'username': username,
      'content': content
    };
  }

  String? validate() {
    if (username.isEmpty) {
      return 'Username is required';
    }
    if (content.isEmpty) {
      return 'Content is required';
    }
    return null;
  }
}

class UpdateMessageRequest {
  final String content;

  const UpdateMessageRequest({required this.content});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'content': content
    };
  }

  String? validate() {
    if (content.isEmpty) {
      return 'Content is required';
    }
    return null;
  }
}

class HTTPStatusResponse {
  final int statusCode;
  final String imageUrl;
  final String description;

  const HTTPStatusResponse({
    required this.statusCode,
    required this.imageUrl,
    required this.description
  });

  factory HTTPStatusResponse.fromJson(Map<String, dynamic> json) {
    return HTTPStatusResponse(
        statusCode: json['status_code'],
        imageUrl: json['image_url'],
        description: json['description']
    );
  }
}

class ApiResponse<T> {
  final bool success;
  final T? data;
  final String? error;

  const ApiResponse({required this.success, this.data, this.error});

  factory ApiResponse.fromJson(Map<String, dynamic> json, T Function(Map<String, dynamic>)? fromJsonT) {
    return ApiResponse(
      success: json['success'],
      error: json['error'],
      data: json['data'] != null && fromJsonT != null
          ? fromJsonT(json['data'])
          : null,
    );
  }
}
