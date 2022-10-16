import 'package:app_test/helper/global_variable.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:tmdb_api/tmdb_api.dart';

class WatchViewModel extends GetxController {
  List moviesList = [].obs;

  @override
  void onInit() {
    loadUpcomingMovies();
  }

  loadUpcomingMovies() async {
    final tmdbWithCustomLogs = TMDB(
      ApiKeys(GlobalVariable.apiKey, GlobalVariable.readAccessToken),
      logConfig: const ConfigLogger(
        showLogs: true,
        showErrorLogs: true,
      ),
    );
    Map result = await tmdbWithCustomLogs.v3.movies.getUpcoming();
    moviesList = result['results'];
    print(moviesList);
  }
}
