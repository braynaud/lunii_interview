class ItemSummary {
  final String title;
  final String year;
  final String imdbId;
  //TODO: use enum
  final String type;
  final String posterUrl;

  factory ItemSummary.fromJson(Map<String, dynamic> json) {
    return ItemSummary(
      title: json['Title'],
      year: json['Year'],
      imdbId: json['imdbID'],
      type: json['Type'],
      posterUrl: json['Poster'],
    );
  }

  ItemSummary({
    required this.title,
    required this.year,
    required this.imdbId,
    required this.type,
    required this.posterUrl,
  });
}
