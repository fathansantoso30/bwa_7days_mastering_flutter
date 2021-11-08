import 'package:bwa_7days_mastering_flutter/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CartList extends StatelessWidget {
  String imageURL;
  String foodName;
  String foodPlacedAt;
  String foodAmount;
  String foodPrice;

  CartList(
      {this.imageURL,
      this.foodName,
      this.foodPlacedAt,
      this.foodAmount,
      this.foodPrice});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imageURL,
                width: SizeConfig.safeBlockHorizontal * 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      foodName,
                      style: GoogleFonts.poppins(
                        color: Color(0xff191919),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      foodPlacedAt,
                      style: GoogleFonts.poppins(
                        color: Color(0xffA3A8B8),
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.safeBlockVertical * 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.remove_circle,
                    color: Color(0xffD9D9D9),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      foodAmount,
                      style: GoogleFonts.poppins(
                          color: Color(0xff191919),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Icon(
                    Icons.add_circle,
                    color: Color(0xff191919),
                  ),
                ],
              ),
              Text(
                '\$$foodPrice',
                style: GoogleFonts.poppins(
                  color: Color(0xff191919),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.end,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
