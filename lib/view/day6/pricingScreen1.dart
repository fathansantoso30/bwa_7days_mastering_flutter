import 'package:bwa_7days_mastering_flutter/asset_path.dart';
import 'package:bwa_7days_mastering_flutter/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PricingScreen1 extends StatelessWidget {
  const PricingScreen1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color(0xff0B073E),
                  Color(0xff602880),
                ])),
          ),
          Container(
            padding: EdgeInsets.all(48),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    pricingScreen1,
                    width: SizeConfig.safeBlockHorizontal * 40,
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 5,
                  ),
                  Text(
                    "Pro Features",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48),
                    child: Text(
                      "Unlock the winner modules and get more insights",
                      style: GoogleFonts.poppins(
                        color: Color(0xff7F7FAD),
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: SizeConfig.safeBlockVertical * 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Color(0xffFE6C4D),
                              child: Icon(
                                Icons.check_rounded,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                "Unlock Our Top Charts",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Color(0xffFE6C4D),
                              child: Icon(
                                Icons.check_rounded,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                "Save More than 1,000 Docs",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Color(0xffFE6C4D),
                              child: Icon(
                                Icons.check_rounded,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                "24/7 Customer Support",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Color(0xffFE6C4D),
                              child: Icon(
                                Icons.check_rounded,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                "Track Company’s Spending",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 5,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Text(
                      "Subscribe Now",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    label: CircleAvatar(
                      radius: 15,
                      backgroundColor: Color(0xffFAACA5),
                      child: Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffE57C73),
                        minimumSize: Size(
                            double.infinity, SizeConfig.safeBlockVertical * 6),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24))),
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 5,
                  ),
                  Text(
                    "Contact Support",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
