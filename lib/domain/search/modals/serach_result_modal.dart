// To parse this JSON data, do
//
//     final searchResultModal = searchResultModalFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SearchResultModal searchResultModalFromJson(String str) => SearchResultModal.fromJson(json.decode(str));

String searchResultModalToJson(SearchResultModal data) => json.encode(data.toJson());

class SearchResultModal {
    SearchResultModal({
        required this.page,
        required this.results,
        required this.totalPages,
        required this.totalResults,
    });

    int page;
    List<SEarchResult> results;
    int totalPages;
    int totalResults;

    factory SearchResultModal.fromJson(Map<String, dynamic> json) => SearchResultModal(
        page: json["page"],
        results: json["results"] == null ? [] : List<SEarchResult>.from(json["results"].map((x) => SEarchResult.fromJson(x))),
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

class SEarchResult {
    SEarchResult({
   
        required this.backdropPath,
        required this.originalTitle,
        required this.title,
        
    });


    String backdropPath;
    String originalTitle;
    String title;
   

    factory SEarchResult.fromJson(Map<String, dynamic> json) => SEarchResult(
        backdropPath: json["logo_path"] ?? "nFcR2kd7vl5O3TITQs6x39BNo6Y.png",
        originalTitle: json["original_title"] ?? "",
        title: json["title"] ?? "",
        );

    Map<String, dynamic> toJson() => {
     
        "backdrop_path": backdropPath,
        "original_title": originalTitle,
        "title": title ,
     
    };
}




