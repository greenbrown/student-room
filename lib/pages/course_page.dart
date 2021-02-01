import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_room/theme.dart';
import 'package:student_room/widgets/course_tile.dart';

class CoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/video.png'),
              ),
            ),
          ),
          ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 225,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                  color: backgroundColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Brand Marketing Strategy',
                      style: blackTextStyle.copyWith(
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'How to build strong company with passion',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),

                    // NOTE: PREPARING

                    Text(
                      '# PREPARING',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    CourseTile(
                      imageUrl: 'assets/icons/icon-1.png',
                      title: 'Ideation',
                      value: 0.7,
                      isLocked: false,
                    ),
                    CourseTile(
                      imageUrl: 'assets/icons/icon-2.png',
                      title: 'Validate Idea',
                      value: 0.2,
                      isLocked: false,
                    ),
                    CourseTile(
                      imageUrl: 'assets/icons/icon-3.png',
                      title: 'Strong Promotion',
                      value: 0,
                      isLocked: true,
                    ),

                    // NOTE: TARGETING CUSTOMER

                    Text(
                      '# TARGETING CUSTOMER',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    CourseTile(
                      imageUrl: 'assets/icons/icon-4.png',
                      title: 'App Survey',
                      value: 0,
                      isLocked: true,
                    ),
                    CourseTile(
                      imageUrl: 'assets/icons/icon-5.png',
                      title: 'Get Funding',
                      value: 0,
                      isLocked: true,
                    ),
                    CourseTile(
                      imageUrl: 'assets/icons/icon-6.png',
                      title: 'Ship to  Investor',
                      value: 0,
                      isLocked: true,
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    // NOTE BUTTONS: using flat button no shadow

                    Container(
                      width: MediaQuery.of(context).size.width -
                          (2 * defaultMargin),
                      height: 50,
                      child: FlatButton(
                        onPressed: () {},
                        color: blueColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Text(
                          'Finish and Take Quiz',
                          style: whiteTextStyle.copyWith(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: MediaQuery.of(context).size.width -
                          (2 * defaultMargin),
                      height: 50,
                      child: FlatButton(
                        onPressed: () {},
                        color: Color(0xffECEEF5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Text(
                          'Skip to Home',
                          style: GoogleFonts.tajawal(
                            color: Color(0xffC3C8DA),
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
