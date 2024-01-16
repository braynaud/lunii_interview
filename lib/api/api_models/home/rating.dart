class Rating {
  final String source;
  final String value;

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      source: json['Source'],
      value: json['Value'],
    );
  }

  Rating({
    required this.source,
    required this.value,
  });
}
