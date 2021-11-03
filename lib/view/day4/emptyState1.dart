import 'package:bwa_7days_mastering_flutter/asset_path.dart';
import 'package:bwa_7days_mastering_flutter/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyState1 extends StatelessWidget {
  const EmptyState1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                emptyState1,
                width: SizeConfig.safeBlockHorizontal * 60,
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 4,
            ),
            Text(
              "Success Order",
              style: GoogleFonts.poppins(
                  color: Color(0xff0E1954),
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 2,
            ),
            Text(
              "We will delivery your package as soon as possible",
              style: GoogleFonts.poppins(
                  color: Color(0xff0E1954),
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 8,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Done",
                style: GoogleFonts.openSans(
                    color: Color(0xffF8F8F8),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xffF94593),
                  minimumSize: Size(SizeConfig.safeBlockHorizontal * 45,
                      SizeConfig.safeBlockVertical * 6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16))),
            ),
          ],
        ),
      ),
    ));
  }
}
