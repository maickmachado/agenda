import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/screens/complete_profile/screen/complete_profile_view.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";

  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Sign Up",
          ),
        ),
      ),
      body: CompleteProfileView(),
    );
  }
}
