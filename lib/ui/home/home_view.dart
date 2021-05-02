import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myshowcase/app/app.logger.dart';
import 'package:myshowcase/theme/theme.dart';
import 'package:myshowcase/ui/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  final log = getLogger('HomeView');
  List<Widget> myL = [
    Container(
      height: 200,
      width: 200,
      color: AppColor.lavender,
      margin: EdgeInsets.all(6),
    ),
    Container(
      height: 200,
      width: 200,
      color: AppColor.lavender,
      margin: EdgeInsets.all(6),
    ),
    Container(
      height: 200,
      width: 200,
      color: AppColor.lavender,
      margin: EdgeInsets.all(6),
    ),
    Container(
      height: 200,
      width: 200,
      color: AppColor.lavender,
      margin: EdgeInsets.all(6),
    ),
    Container(
      height: 200,
      width: 200,
      color: AppColor.lavender,
      margin: EdgeInsets.all(6),
    ),
    Container(
      height: 200,
      width: 200,
      color: AppColor.lavender,
      margin: EdgeInsets.all(6),
    ),
    Container(
      height: 200,
      width: 200,
      color: AppColor.lavender,
      margin: EdgeInsets.all(6),
    ),
    Container(
      height: 200,
      width: 200,
      color: AppColor.lavender,
      margin: EdgeInsets.all(6),
    ),
    Container(
      height: 200,
      width: 200,
      color: AppColor.lavender,
      margin: EdgeInsets.all(6),
    ),
    Container(
      height: 200,
      width: 200,
      color: AppColor.lavender,
      margin: EdgeInsets.all(6),
    ),
    Container(
      height: 200,
      width: 200,
      color: AppColor.lavender,
      margin: EdgeInsets.all(6),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                leading: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                actions: [
                  IconButton(
                    icon: Icon(
                      model.icon,
                      color: Colors.white,
                    ),
                    onPressed: model.toggleTheme,
                  )
                ],
                pinned: true,
                expandedHeight: MediaQuery.of(context).size.height / 2,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    'My Works',
                    style: GoogleFonts.poppins().copyWith(
                      color: AppColor.lavender,
                    ),
                  ),
                  background: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        foregroundDecoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Theme.of(context).primaryColor.withOpacity(0.1),
                              Theme.of(context).primaryColor
                            ],
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/afridi.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned.fill(
                        bottom: MediaQuery.of(context).size.height / 10,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Abu Sayeed Afridi',
                                style: GoogleFonts.poppins().copyWith(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Software Developer',
                                style: GoogleFonts.poppins().copyWith(
                                  color: AppColor.lavender,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w100,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  centerTitle: true,
                ),
              ),
              SliverGrid.count(crossAxisCount: 2, children: myL),
            ],
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
