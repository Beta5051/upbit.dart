class UpBitException {
  final String name;
  final String message;

  UpBitException(this.name, this.message);

  factory UpBitException.fromMap(Map<String, dynamic> map) {
    final error = map['error']!;
    return UpBitException(error['name']!, error['message']!);
  }

  Map<String, dynamic> toMap() {
    return {
      'error': {
        'name': name,
        'message': message,
      }
    };
  }

  @override
  String toString() => '[UpBitException] name: $name message: $message';
}