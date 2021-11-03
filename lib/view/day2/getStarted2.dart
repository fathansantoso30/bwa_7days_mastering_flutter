import 'package:bwa_7days_mastering_flutter/asset_path.dart';
import 'package:bwa_7days_mastering_flutter/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted2 extends StatelessWidget {
  const GetStarted2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Health First.",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Exercise together with our best community fit in the world",
                style: GoogleFonts.poppins(
                    color: Color(0xff828284),
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 32),
                  child: Image.asset(
                    getStarted2,
                    fit: BoxFit.fill,
                    height: SizeConfig.safeBlockVertical * 60,
                    width: SizeConfig.safeBlockHorizontal * 100,
                  )),
              Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Shape My Body",
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xffAFEA0D),
                          minimumSize: Size(double.infinity,
                              SizeConfig.safeBlockVertical * 6)),
                    ),
                    SizedBox(
                      height: SizeConfig.safeBlockVertical * 2,
                    ),
                    Text(
                      "Terms & Conditions",
                      style: GoogleFonts.poppins(
                          color: Color(0xff757575),
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
