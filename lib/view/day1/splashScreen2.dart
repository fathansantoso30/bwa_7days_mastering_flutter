import 'package:bwa_7days_mastering_flutter/asset_path.dart';
import 'package:bwa_7days_mastering_flutter/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff13131E),
          body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                child: Image.asset(splashLogo2),
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 20,
              ),
              Text(
                "VENTURE",
                style: GoogleFonts.dmSerifDisplay(
                  color: Colors.white,
                  fontSize: 32,
                  letterSpacing: 10,
                ),
                // style: TextStyle(
                //     color: Colors.white, fontSize: 32, letterSpacing: 10),
              )
            ]),
          )),
    );
  }
}
