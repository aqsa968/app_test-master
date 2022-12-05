import 'package:app_test/helper/global_variable.dart';
import 'package:app_test/screens/movie_detail/movie_detail_view.dart';
import 'package:app_test/screens/movie_list_screen/watch_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MovieListView extends StatelessWidget {
  final MovieListViewModel watchViewModel = Get.put(MovieListViewModel());
  MovieListView({Key? key,}) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(100, 100),
          child: Container(
            margin:
                const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 20),
            child: Row(
              children: const [
                Text(
                  'Watch',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: 'Poppins'),
                ),
                Spacer(),
                Icon(
                  Icons.search_rounded,
                  size: 18,
                ),
              ],
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 10, bottom: 5),
          color: const Color(0xffF9F9F9),
          child: Obx(() => watchViewModel.moviesList.isNotEmpty
              ? ListView.separated(
                  shrinkWrap: true,
                  itemCount: watchViewModel.moviesList.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      width: 100,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        GlobalVariable.imgUrl.value =
                            'http://image.tmdb.org/t/p/w500'+
                                watchViewModel.moviesList[index]['poster_path'];
                        GlobalVariable.releaseDate.value =
                            watchViewModel.moviesList[index]['release_date'];
                        GlobalVariable.overView.value =
                            watchViewModel.moviesList[index]['overview'];
                        GlobalVariable.movieId.value =
                            watchViewModel.moviesList[index]['id'];
                        print("((((((((((((((( ");
                        print(  watchViewModel.moviesList[index]);
                       // print(  watchViewModel.moviesList[index]['vote_count']);
                        // Get.to(MovieDetailView(),
                        // );
                      },
                      child: moviesListLayout(index),
                    );
                  },
                )
              : Container(child: const Text('Nothing to Show'),),),
        ),
      ),
    );
  }

  Widget moviesListLayout(int item) {
    return Container(
      height: Get.height * 0.3,
      margin: const EdgeInsets.only(
        left: 10,
        right: 20,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0)),
        image: DecorationImage(
            image: NetworkImage(
              'http://image.tmdb.org/t/p/w500' + watchViewModel.moviesList[item]['poster_path'],
            ),
            fit: BoxFit.cover),
      ),
      padding: const EdgeInsets.only(right: 10, top: 10, bottom: 5),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            alignment: Alignment.bottomLeft,
            child: Text(
              watchViewModel.moviesList[item]['original_title'],
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
