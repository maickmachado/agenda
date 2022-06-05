import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/global/size_config.dart';

import 'splash_body_view.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
