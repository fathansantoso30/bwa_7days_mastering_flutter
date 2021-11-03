import 'package:bwa_7days_mastering_flutter/asset_path.dart';
import 'package:bwa_7days_mastering_flutter/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyState2 extends StatelessWidget {
  const EmptyState2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff1B1B33),
      body: Container(
        padding: EdgeInsets.all(64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                emptyState2,
                width: SizeConfig.safeBlockHorizontal * 60,
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 4,
            ),
            Text(
              "Boost Profit!",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 2,
            ),
            Text(
              "Our tools are helping business to grow much faster",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 8,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Image.asset(emptyState2_1),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff808EE0),
                padding: EdgeInsets.all(16),
                // minimumSize: Size(SizeConfig.safeBlockHorizontal * 45,
                //     SizeConfig.safeBlockVertical * 6),),
                shape: CircleBorder(),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
