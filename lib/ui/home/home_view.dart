import 'package:flutter/material.dart';
import 'package:myshowcase/responsive/orientation_layout.dart';
import 'package:myshowcase/responsive/screen_type_layout.dart';
import 'package:myshowcase/ui/home/home_view_mobile.dart';

import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) {
        return ScreenTypeLayout(
          mobile: OrientationLayout(
            potrait: (context) => HomeViewMobilePotrait(),
            landscape: (context) => HomeViewMobileLandscape(),
          ),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}

// [
//                 CircleAvatar(
//                   radius: 110,
//                   backgroundColor: AppColor.lavender,
//                   child: ClipOval(
//                     child: Image.asset(
//                       'assets/images/afridi.jpg',
//                       fit: BoxFit.cover,
//                       width: 200,
//                       height: 200,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 Align(
//                   alignment: Alignment.center,
//                   child: Text(
//                     'Abu Sayeed Afridi',
//                     style: GoogleFonts.leagueScript().copyWith(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ],
