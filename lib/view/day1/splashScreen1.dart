import 'package:bwa_7days_mastering_flutter/asset_path.dart';
import 'package:bwa_7days_mastering_flutter/sizeConfig.dart';
import 'package:flutter/material.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
          body: Stack(children: [
        Image.asset(splashScreen1,
            fit: BoxFit.fill,
            height: SizeConfig.screenHeight,
            width: SizeConfig.screenWidth),
        Container(
          height: SizeConfig.safeBlockVertical * 20,
          alignment: Alignment.center,
          child: Image.asset(splashLogo1),
        )
      ])),
    );
  }
}
