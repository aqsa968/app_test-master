import 'package:app_test/helper/global_variable.dart';
import 'package:app_test/screens/movie_detail/movie_detail_viewmodel.dart';
import 'package:app_test/screens/video_player/video_player_view.dart';
import 'package:app_test/widgets/custom_buttons.dart';
import 'package:app_test/widgets/custom_chips.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MovieDetailView extends StatelessWidget {
  MovieDetailView({Key? key}) : super(key: key);
  final MovieDetailViewModel movieDetailViewModel = Get.put(MovieDetailViewModel());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                    width: Get.width,
                    height: Get.height * 0.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              NetworkImage(GlobalVariable.imgUrl.value ?? ""),
                          fit: BoxFit.cover),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 10,top: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(Icons.arrow_back_ios_new_rounded,size: 18,),
                              Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: const Text("Watch",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),))
                            ],
                          ),
                          const Spacer(),
                          Container(
                            margin: const EdgeInsets.only(top: 200),
                            child: Text(
                              "In Theaters ${GlobalVariable.releaseDate.value}",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Spacer(),
                          CustomElevatedBtn(
                            backgroundColor: const Color(0xff61C3F2),
                            width: 310,
                            height: 50,
                            child: const Text(
                              'Get Tickets',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              // Get.to(() => VerifiedPageView());
                            },
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: CustomElevatedBtn(
                              backgroundColor: Colors.transparent,
                              width: 310,
                              height: 50,
                              child: const Text(
                                'Watch Trailer',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Get.to(const VideoApp());
                              },
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomChip(
                        labelPadding: const EdgeInsets.only(
                            left: 15, right: 15, top: 0, bottom: 0),
                        label: const Text('Fiction',
                            style: TextStyle(
                              color: Colors.white,
                                fontWeight: FontWeight.normal, fontSize: 10)),
                        color: Colors.red,
                        onSelected: (bool value) {},
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                      ),
                      CustomChip(
                        color: Colors.purpleAccent,
                        labelPadding: const EdgeInsets.only(
                            left: 15, right: 15, top: 0, bottom: 0),
                        label: const Text('Thriller',
                            style: TextStyle(
                              color: Colors.white,
                                fontWeight: FontWeight.normal, fontSize: 10)),
                        onSelected: (bool value) {},
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                      ),
                      CustomChip(
                        color: Colors.brown,
                        labelPadding: const EdgeInsets.only(
                            left: 15, right: 15, top: 0, bottom: 0),
                        label: const Text('Comedy',
                            style: TextStyle(
                              color: Colors.white,
                                fontWeight: FontWeight.normal, fontSize: 10)),
                        onSelected: (bool value) {},
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                      ),
                      CustomChip(
                        color: Colors.lightGreen,
                        labelPadding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                        ),
                        label: const Text('Fantasy',
                            style: TextStyle(
                              color: Colors.white,
                                fontWeight: FontWeight.normal, fontSize: 10)),
                        onSelected: (bool value) {},
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                      ),
                    ],
                  ),
                  const Text(
                    "OverView",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    GlobalVariable.overView.value ?? "",
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      color: Color(0xff8F8F8F),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
