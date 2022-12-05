import 'package:app_test/helper/global_variable.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/tmdb_api.dart';

class MovieDetailViewModel extends GetxController {

  @override
  void onInit() {
    super.onInit();
    videoPlay();
  }

  videoPlay() async {
    final tmdb = TMDB(ApiKeys(GlobalVariable.apiKey, GlobalVariable.readAccessToken));
    print(GlobalVariable.movieId.value);
    GlobalVariable.movieLink = await tmdb.v3.movies.getVideos( GlobalVariable.movieId.value);
    print("*****************************movie Link***************");
  //  print( GlobalVariable.movieLink);
    dynamic url = ("https://api.themoviedb.org/3/movie/"+GlobalVariable.movieId.value.toString()+"/videos?api_key=f20ce291ef824e3ea611f88303f64717");
    print("https://api.themoviedb.org/3/movie/"+GlobalVariable.movieId.value.toString()+"/videos?api_key=f20ce291ef824e3ea611f88303f64717");
    print("https://www.youtube.com/watch?v="+ url[0]['key']);
  }
}
