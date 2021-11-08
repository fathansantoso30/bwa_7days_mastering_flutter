import 'package:bwa_7days_mastering_flutter/asset_path.dart';
import 'package:bwa_7days_mastering_flutter/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PricingScreen2 extends StatefulWidget {
  const PricingScreen2({Key key}) : super(key: key);

  @override
  _PricingScreen2State createState() => _PricingScreen2State();
}

class _PricingScreen2State extends State<PricingScreen2> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: GestureDetector(
              child: Column(
                children: [
                  header(),
                  option(1, pricingScreen2_1, "Money Security", "support ",
                      "24/7"),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 3,
                  ),
                  option(2, pricingScreen2_2, "Automation", "we provide ",
                      "Invoice"),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 3,
                  ),
                  option(3, pricingScreen2_3, "Balance Report", "can up to ",
                      "10k"),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 10,
                  ),
                  footer(),
                ],
              ),
            )));
  }

  Widget header() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(32),
          child: Column(
            children: [
              Image.asset(
                pricingScreen2,
                width: SizeConfig.safeBlockHorizontal * 30,
              ),
              Padding(
                padding: const EdgeInsets.all(32),
                child: Text(
                  "Which one you wish to Upgrade?",
                  style: GoogleFonts.poppins(
                    color: Color(0xff191919),
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget option(
    int index,
    String imageURL,
    String title,
    String desc,
    String subdesc,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 32),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          border: Border.all(
            width: 2,
            color:
                selectedIndex == index ? Color(0xff6050E7) : Color(0xffD9DEEA),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              imageURL,
              width: SizeConfig.safeBlockHorizontal * 20,
              height: SizeConfig.safeBlockVertical * 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                        color: Color(0xff191919),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Text(
                        desc,
                        style: GoogleFonts.poppins(
                            color: Color(0xffA3A8B8),
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        subdesc,
                        style: GoogleFonts.poppins(
                            color: Color(0xff5343C2),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Icon(
              Icons.check_circle_rounded,
              color: selectedIndex == index ? Color(0xff6050E7) : Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget footer() {
    return Expanded(
      child: Container(
        // height: SizeConfig.safeBlockVertical * ,
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        color: Color(0xff6050E7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Upgrade Now",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(
              Icons.arrow_forward_outlined,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
