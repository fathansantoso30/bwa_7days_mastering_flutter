import 'package:bwa_7days_mastering_flutter/asset_path.dart';
import 'package:bwa_7days_mastering_flutter/sizeConfig.dart';
import 'package:bwa_7days_mastering_flutter/view/day7/cart_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RandomScreen1 extends StatelessWidget {
  const RandomScreen1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffDDDDDD),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Center(
              child: Text(
                'My Shopping Cart',
                style: GoogleFonts.poppins(
                  color: Color(0xff191919),
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 5,
            ),
            CartList(
              imageURL: randomScreen1_1,
              foodName: 'Burger Malleta',
              foodPlacedAt: 'McTheone',
              foodAmount: '1',
              foodPrice: '90.00',
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 2,
            ),
            CartList(
              imageURL: randomScreen1_2,
              foodName: 'Mojito Orange',
              foodPlacedAt: 'The Bar',
              foodAmount: '5',
              foodPrice: '510.00',
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 4,
            ),
            Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Informations',
                    style: GoogleFonts.poppins(
                        color: Color(0xff191919),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sub total',
                          style: GoogleFonts.poppins(
                            color: Color(0xff191919),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          '\$600.00',
                          style: GoogleFonts.poppins(
                            color: Color(0xff191919),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery',
                          style: GoogleFonts.poppins(
                            color: Color(0xff191919),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          '\$80.00',
                          style: GoogleFonts.poppins(
                            color: Color(0xff191919),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: GoogleFonts.poppins(
                            color: Color(0xff191919),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          '\$680.00',
                          style: GoogleFonts.poppins(
                            color: Color(0xff191919),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 8,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Checkout Now",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  minimumSize:
                      Size(double.infinity, SizeConfig.safeBlockVertical * 6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 2,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Save to Wishlist",
                style: GoogleFonts.poppins(
                    color: Colors.amber[700],
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  minimumSize:
                      Size(double.infinity, SizeConfig.safeBlockVertical * 6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ],
        ),
      ),
    ));
  }
}
