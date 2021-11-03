import 'package:bwa_7days_mastering_flutter/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn1 extends StatelessWidget {
  const SignIn1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Icon(
                Icons.euro_rounded,
                color: Colors.white,
                size: 32,
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xffFCAC15),
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder()),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 8,
            ),
            Text(
              "Welcome back.",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "Let’s make money.",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none),
                  fillColor: Color(0xff262A34),
                  filled: true,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelText: "Email",
                  labelStyle: GoogleFonts.openSans(
                      color: Color(0xff6F7075), fontSize: 14)),
              style: GoogleFonts.openSans(color: Colors.white, fontSize: 14),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none),
                    fillColor: Color(0xff262A34),
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: Color(0xff6F7075),
                    ),
                    labelText: "Password",
                    labelStyle: GoogleFonts.openSans(
                        color: Color(0xff6F7075), fontSize: 14)),
                style: GoogleFonts.openSans(color: Colors.white, fontSize: 14),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot My Password",
                style: GoogleFonts.poppins(
                    color: Color(0xff6A6B70),
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.end,
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 16,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Sign In",
                style: GoogleFonts.openSans(
                    color: Color(0xff6B4909),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xffFCAC15),
                  minimumSize:
                      Size(double.infinity, SizeConfig.safeBlockVertical * 6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16))),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have account?",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
