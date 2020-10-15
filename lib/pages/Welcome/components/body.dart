import 'package:flutter/material.dart';
import 'package:run_dev_app/Pages/Login/login.dart';
import 'package:run_dev_app/constants.dart';
import 'package:run_dev_app/pages/Welcome/components/background.dart';
import 'package:flutter_svg/svg.dart';
import 'package:run_dev_app/widgets/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "WELCOME TO EDU",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset("$baseIconPath/seoul.svg",
              height: size.height * 0.4),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
            text: "LOGIN",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ),
              );
            },
          ),
          RoundedButton(
            text: "REGISTER",
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {},
          ),
        ],
      ),
    ));
  }
}
