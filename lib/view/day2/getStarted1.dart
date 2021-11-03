import 'package:bwa_7days_mastering_flutter/asset_path.dart';
import 'package:bwa_7days_mastering_flutter/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted1 extends StatelessWidget {
  const GetStarted1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(getStarted1,
                fit: BoxFit.fill,
                height: SizeConfig.screenHeight,
                width: SizeConfig.screenWidth),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 50,
                  ),
                  Text(
                    "Maximize Revenue",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(24),
                    child: Text(
                      "Gain more profit from cryptocurrency without any risk involved",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.exit_to_app_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff877BFB),
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(16)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
