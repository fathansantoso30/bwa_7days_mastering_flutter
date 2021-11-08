import 'package:bwa_7days_mastering_flutter/asset_path.dart';
import 'package:bwa_7days_mastering_flutter/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingScreen2 extends StatelessWidget {
  const RatingScreen2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                ratingScreen2,
                width: SizeConfig.safeBlockHorizontal * 75,
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 5,
              ),
              Text(
                "Enjoy Your Meal",
                style: GoogleFonts.poppins(
                    color: Color(0xff121622),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              Text(
                "Please rate our experience",
                style: GoogleFonts.poppins(
                    color: Color(0xff808EAB),
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 5,
              ),
              RatingBar.builder(
                  itemBuilder: (context, _) => Icon(
                        Icons.star_rounded,
                        color: Color(0xffFFC648),
                        size: 100,
                      ),
                  itemSize: SizeConfig.safeBlockHorizontal * 15,
                  itemPadding: EdgeInsets.symmetric(horizontal: 2),
                  unratedColor: Color(0xffF8F8F8),
                  initialRating: 3,
                  onRatingUpdate: (rating) {}),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 5,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide.none),
                    fillColor: Color(0xffF3F3F3),
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    hintText: "Your message",
                    hintStyle: GoogleFonts.poppins(
                        color: Color(0xff808EAB),
                        fontSize: 14,
                        fontWeight: FontWeight.normal)),
                style:
                    GoogleFonts.poppins(color: Color(0xff17171A), fontSize: 16),
                maxLines: 5,
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 2.5,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Submit Review",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff4074E6),
                    minimumSize:
                        Size(double.infinity, SizeConfig.safeBlockVertical * 6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13))),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
