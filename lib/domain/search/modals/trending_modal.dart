// To parse this JSON data, do
//
//     final firstScreenModal = firstScreenModalFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

TrendingModal firstScreenModalFromJson(String str) =>
    TrendingModal.fromJson(json.decode(str));

String firstScreenModalToJson(TrendingModal data) => json.encode(data.toJson());

class TrendingModal {
  TrendingModal({
    required this.page,
    this.results = const [],
    required this.totalPages,
    required this.totalResults,
  });

  int page;
  List<TrendingResults> results;
  int totalPages;
  int totalResults;

  factory TrendingModal.fromJson(Map<String, dynamic> json) => TrendingModal(
        page: json["page"],
        results: json["results"] == null
            ? []
            : List<TrendingResults>.from(
                json["results"].map((x) => TrendingResults.fromJson(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "results": results,
        "total_pages": totalPages,
        "total_results": totalResults,
      };
}

class TrendingResults {
  TrendingResults({
    required this.adult,
    required this.backdropPath,
    required this.id,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.popularity,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
    required this.name,
    required this.originalName,
  });

  bool adult;
  String backdropPath;
  int id;

  String originalTitle;
  String overview;
  String posterPath;

  double popularity;
  bool video;
  double voteAverage;
  int voteCount;
  String name;
  String originalName;

  factory TrendingResults.fromJson(Map<String, dynamic> json) =>
      TrendingResults(
        adult: json["adult"] ?? false,
        backdropPath: "https://www.themoviedb.org/t/p/w500_and_h282_face/${json["backdrop_path"]}" ?? "",
        id: json["id"] ?? 0,
        originalTitle: json["original_title"] ?? "no title",
        overview: json["overview"] ?? "",
        posterPath: json["poster_path"] ?? "",
        popularity: json["popularity"] ?? 0.0,
        video: json["video"] ?? false,
        voteAverage: json["vote_average"] ?? 0.0,
        voteCount: json["vote_count"] ?? 0,
        name: json["name"] ?? json["original_title"], 
        originalName: json["original_name"] ?? json["original_title"],
      );

  Map<String, dynamic> toJson() => {
        "adult": adult,
        "backdrop_path": backdropPath,
        "id": id,
        "original_title": originalTitle,
        "overview": overview,
        "poster_path": posterPath,
        "popularity": popularity,
        "video": video,
        "vote_average": voteAverage,
        "vote_count": voteCount,
        "name": name,
        "original_name": originalName,
      };
}
