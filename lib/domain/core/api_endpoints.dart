import '../../infrastructure/api_key.dart';

const String baseUrl = "https://api.themoviedb.org/3";

const String downloadsAPI = "$baseUrl/movie/550?api_key=$api_key";
const String trendingAPI = "$baseUrl/trending/all/day?api_key=$api_key";
const String searchMovieAPI = "$baseUrl/search/company?api_key=$api_key";
