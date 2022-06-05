import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/models/message_sign_up.dart';
import 'package:sex_shopp_aplication/models/media_login_widget.dart';
import 'package:sex_shopp_aplication/models/message_term_agree_widget.dart';
import 'package:sex_shopp_aplication/screens/complete_profile/components/complete_profile_form_widget.dart';
import 'package:sex_shopp_aplication/screens/complete_profile/components/complete_profile_message.dart';
import 'package:sex_shopp_aplication/screens/sign_in/components/sign_in_message_widget.dart';
import 'package:sex_shopp_aplication/global/size_config.dart';

class CompleteProfileView extends StatefulWidget {
  const CompleteProfileView({Key? key}) : super(key: key);

  @override
  State<CompleteProfileView> createState() => _CompleteProfileViewState();
}

class _CompleteProfileViewState extends State<CompleteProfileView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CompleteProfileMessage(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.03,
              ),
              CompleteProfileForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              MessageTermsAgree(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
