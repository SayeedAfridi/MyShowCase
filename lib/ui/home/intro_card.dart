import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myshowcase/theme/theme.dart';

class IntroCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    Radius radius =
        orientation == Orientation.portrait ? Radius.circular(30) : Radius.zero;
    return Stack(
      children: [
        Container(
          width: orientation == Orientation.portrait ? double.infinity : 350,
          height: double.infinity,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        Container(
          height: double.infinity,
          width: orientation == Orientation.portrait ? double.infinity : 350,
          foregroundDecoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: radius,
              bottomRight: radius,
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Theme.of(context).accentColor.withOpacity(0.1),
                Theme.of(context).accentColor
              ],
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: radius,
              bottomRight: radius,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: radius,
              bottomRight: radius,
            ),
            child: Image.asset(
              'assets/images/afridi.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned.fill(
          bottom: orientation == Orientation.portrait
              ? MediaQuery.of(context).size.height / 10
              : MediaQuery.of(context).size.width / 10,
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
    );
  }
}
