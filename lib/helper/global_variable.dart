import 'package:get/get.dart';

class GlobalVariable {


  static const String apiKey = 'f20ce291ef824e3ea611f88303f64717';
  static const String readAccessToken = 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmMjBjZTI5MWVmODI0ZTNlYTYxMWY4ODMwM2Y2NDcxNyIsInN1YiI6IjYzNGE3OGQ2ZTI2M2JiMDA5YzRmMzkxNCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.hAWTvLiLE7jY45ke98Ak9bP3wCsAuFi7DO4J9PgOLGo';

  static RxInt movieId=0.obs;
  static RxInt selectedIndex = 0.obs;
  static RxString imgUrl = "".obs;
  static RxString releaseDate="".obs;
  static RxString overView="".obs;
  static Map<dynamic,dynamic>? movieLink;
}
