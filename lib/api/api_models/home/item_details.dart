import 'package:lunii_test/api/api_models/home/item_summary.dart';
import 'package:lunii_test/api/api_models/home/rating.dart';

class ItemDetails extends ItemSummary {
  ItemDetails({
    required super.title,
    required super.year,
    required super.imdbId,
    required super.type,
    required super.posterUrl,
    required this.rating,
    required this.releaseDate,
    required this.runtime,
    required this.genre,
    required this.directors,
    required this.writers,
    required this.actors,
    required this.plotSummary,
    required this.language,
    required this.country,
    required this.awardsAndNominations,
    required this.ratings,
    required this.metascore,
    required this.imdbRating,
    required this.imdbVotes,
    required this.dvdDate,
    required this.boxOffice,
    required this.production,
    required this.website,
    required this.response,
  });

  factory ItemDetails.fromJson(Map<String, dynamic> json) {
    return ItemDetails(
      title: json['Title'],
      year: json['Year'],
      imdbId: json['imdbID'],
      type: json['Type'],
      posterUrl: json['Poster'],
      rating: json['Rated'],
      releaseDate: json['Released'],
      runtime: json['Runtime'],
      genre: json['Genre'].split(','),
      directors: json['Director'].split(','),
      writers: json['Writer'].split(','),
      actors: json['Actors'].split(','),
      plotSummary: json['Plot'],
      language: json['Language'],
      country: json['Country'],
      awardsAndNominations: json['Awards'],
      ratings: (json['Ratings'] as List)
          .map((rating) => Rating.fromJson(rating))
          .toList(),
      metascore: json['Metascore'],
      imdbRating: num.parse(json['imdbRating']),
      imdbVotes: int.parse((json['imdbVotes'] as String).replaceAll(',', '')),
      dvdDate: json['DVD'],
      boxOffice: json['BoxOffice'],
      production: json['Production'],
      website: json['Website'],
      response: bool.parse(json['Response'].toString().toLowerCase()),
    );
  }

  //TODO: use enum
  final String rating;
  final String releaseDate;
  //TODO: convert to int
  final String runtime;
  //TODO: use list enum
  final List<String> genre;
  final List<String> directors;
  final List<String> writers;
  final List<String> actors;
  final String plotSummary;
  final String language;
  final String country;
  final String awardsAndNominations;
  final List<Rating> ratings;
  final String metascore;
  final num imdbRating;
  final int imdbVotes;
  final String dvdDate;
  //TODO: create currency class
  final String boxOffice;
  final String production;
  final String website;
  final bool response;
}
