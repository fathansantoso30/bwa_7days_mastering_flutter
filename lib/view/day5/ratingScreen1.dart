import 'package:bwa_7days_mastering_flutter/asset_path.dart';
import 'package:bwa_7days_mastering_flutter/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingScreen1 extends StatelessWidget {
  const RatingScreen1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff181925),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                ratingScreen1,
                width: SizeConfig.safeBlockHorizontal * 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 32,
              ),
              child: Text(
                "Pizza Ballado",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              "\$90,00",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    "Was it delicious?",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      ratingScreen1Emoji1,
                      width: SizeConfig.safeBlockHorizontal * 15,
                    ),
                    Image.asset(
                      ratingScreen1Emoji2,
                      width: SizeConfig.safeBlockHorizontal * 15,
                    ),
                    Image.asset(
                      ratingScreen1Emoji3,
                      width: SizeConfig.safeBlockHorizontal * 15,
                    ),
                    Image.asset(
                      ratingScreen1Emoji4,
                      width: SizeConfig.safeBlockHorizontal * 15,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Rate Now",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff34D186),
                  minimumSize: Size(SizeConfig.safeBlockHorizontal * 50,
                      SizeConfig.safeBlockVertical * 6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60))),
            ),
          ],
        ),
      ),
    ));
  }
}
