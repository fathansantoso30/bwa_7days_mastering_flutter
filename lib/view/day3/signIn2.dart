import 'package:bwa_7days_mastering_flutter/asset_path.dart';
import 'package:bwa_7days_mastering_flutter/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn2 extends StatelessWidget {
  const SignIn2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.safeBlockVertical * 5,
            ),
            Center(
              child: Image.asset(
                signIn2,
                width: SizeConfig.safeBlockHorizontal * 65,
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 5,
            ),
            Align(alignment: Alignment.topLeft, child: Text("Email Address")),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(72),
                      borderSide: BorderSide.none),
                  fillColor: Color(0xffF3F3F3),
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  hintText: "Email",
                  hintStyle: GoogleFonts.openSans(
                      color: Color(0xff17171A), fontSize: 14)),
              style:
                  GoogleFonts.openSans(color: Color(0xff17171A), fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child:
                  Align(alignment: Alignment.topLeft, child: Text("Password")),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(72),
                      borderSide: BorderSide.none),
                  fillColor: Color(0xffF3F3F3),
                  filled: true,
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Color(0xff17171A),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  hintText: "Password",
                  hintStyle: GoogleFonts.openSans(
                      color: Color(0xff17171A), fontSize: 14)),
              style:
                  GoogleFonts.openSans(color: Color(0xff17171A), fontSize: 16),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 5,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Log In",
                style: GoogleFonts.openSans(
                    color: Color(0xffF8F8F8),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff5468FF),
                  minimumSize:
                      Size(double.infinity, SizeConfig.safeBlockVertical * 6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(72))),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 2,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Create New Account",
                style: GoogleFonts.openSans(
                    color: Color(0xffCFCFCF),
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xffF8F8F8),
                  minimumSize:
                      Size(double.infinity, SizeConfig.safeBlockVertical * 6),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xffD3D3D3)),
                    borderRadius: BorderRadius.circular(72),
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
