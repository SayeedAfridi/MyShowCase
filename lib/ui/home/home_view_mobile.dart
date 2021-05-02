import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myshowcase/data/projects.dart';
import 'package:myshowcase/theme/theme.dart';
import 'package:myshowcase/ui/home/home_viewmodel.dart';
import 'package:myshowcase/ui/home/intro_card.dart';
import 'package:myshowcase/ui/widgets/app_drawer/app_drawer.dart';
import 'package:stacked/stacked.dart';

class HomeViewMobilePotrait extends StatelessWidget {
  HomeViewMobilePotrait({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          drawer: AppDrawer(),
          key: _scKey,
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Theme.of(context).primaryColor,
                leading: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    _scKey.currentState?.openDrawer();
                  },
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
                  background: IntroCard(),
                  centerTitle: true,
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate.fixed(
                  Projects.getProjects(),
                ),
              ),
            ],
          ),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}

class HomeViewMobileLandscape extends StatelessWidget {
  HomeViewMobileLandscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: Row(
            children: [
              AppDrawer(),
              IntroCard(),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      title: Text(
                        'My Works',
                        style: GoogleFonts.poppins().copyWith(
                          color: AppColor.lavender,
                        ),
                      ),
                      centerTitle: true,
                      floating: true,
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate.fixed(
                        Projects.getProjects(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
