import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/screens/home/screen/home_view.dart';

import '../../../global/size_config.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home_screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: HomeView(),
    );
  }
}
