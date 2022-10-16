import 'package:app_test/helper/global_variable.dart';
import 'package:app_test/screens/movie_detail/movie_detail_viewmodel.dart';
import 'package:app_test/screens/video_player/video_player_view.dart';
import 'package:app_test/widgets/custom_buttons.dart';
import 'package:app_test/widgets/custom_chips.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MovieDetailView extends StatelessWidget {
  MovieDetailView({Key? key}) : super(key: key);
  MovieDetailViewModel movieDetailViewModel = Get.put(MovieDetailViewModel());

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
                      padding: EdgeInsets.only(left: 10,top: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.arrow_back_ios_new_rounded,size: 18,),
                              Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text("Watch",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),))
                            ],
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(top: 200),
                            child: Text(
                              "In Theaters " + GlobalVariable.releaseDate.value,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Spacer(),
                          CustomElevatedBtn(
                            backgroundColor: Color(0xff61C3F2),
                            width: 310,
                            height: 50,
                            child: Text(
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
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: CustomElevatedBtn(
                              backgroundColor: Colors.transparent,
                              width: 310,
                              height: 50,
                              child: Text(
                                'Watch Trailer',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Get.to(VideoApp());
                              },
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomChip(
                        labelPadding: EdgeInsets.only(
                            left: 15, right: 15, top: 0, bottom: 0),
                        label: Text('Fiction',
                            style: TextStyle(
                              color: Colors.white,
                                fontWeight: FontWeight.normal, fontSize: 10)),
                        color: Colors.red,
                        onSelected: (bool value) {},
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                      ),
                      CustomChip(
                        color: Colors.purpleAccent,
                        labelPadding: EdgeInsets.only(
                            left: 15, right: 15, top: 0, bottom: 0),
                        label: Text('Thriller',
                            style: TextStyle(
                              color: Colors.white,
                                fontWeight: FontWeight.normal, fontSize: 10)),
                        onSelected: (bool value) {},
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                      ),
                      CustomChip(
                        color: Colors.brown,
                        labelPadding: EdgeInsets.only(
                            left: 15, right: 15, top: 0, bottom: 0),
                        label: Text('Comedy',
                            style: TextStyle(
                              color: Colors.white,
                                fontWeight: FontWeight.normal, fontSize: 10)),
                        onSelected: (bool value) {},
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                      ),
                      CustomChip(
                        color: Colors.lightGreen,
                        labelPadding: EdgeInsets.only(
                          left: 15,
                          right: 15,
                        ),
                        label: Text('Fantasy',
                            style: TextStyle(
                              color: Colors.white,
                                fontWeight: FontWeight.normal, fontSize: 10)),
                        onSelected: (bool value) {},
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                      ),
                    ],
                  ),
                  Text(
                    "OverView",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    GlobalVariable.overView.value ?? "",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
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
