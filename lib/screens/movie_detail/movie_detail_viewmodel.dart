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
    print( GlobalVariable.movieLink);
    print("https://www.youtube.com/watch?v="+GlobalVariable.movieLink?['results']['name']['key']);

  }
}
