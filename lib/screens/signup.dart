import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/brand_button.dart';
import 'package:food_delivery_app/custom_widgets/input_field.dart';
import 'package:food_delivery_app/custom_widgets/second_heading.dart';
import 'package:food_delivery_app/custom_widgets/theme_button.dart';
import 'package:food_delivery_app/custom_widgets/third_heading.dart';
import 'package:food_delivery_app/screens/add_bio.dart';
import 'package:food_delivery_app/screens/home.dart';
import 'package:food_delivery_app/screens/login.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 58.0),
          child: Column(
            children: [
              Center(
                  child: Image.asset(
                    'assets/Logo.png',
                  )),
              const SizedBox(
                height: 38,
              ),
              const SecondHeading(heading: 'Sign Up For Free '),
              const InputField(
                hintText: 'Username',
                prefixIcon: Icons.email,
              ),
              const InputField(
                hintText: 'Email',
                prefixIcon: Icons.email,
              ),
              const InputField(
                hintText: 'Password',
                prefixIcon: Icons.lock,
              ),

              const ThirdHeading(heading: 'Forgot Your Password?'),
               ThemeButton(btnText: 'Create Account', route: AddBioData()),
                InkWell(
                 onTap: () => Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const Login()),
                 ),
                   // onTap: () {
                   //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget.route,));
                   // },
                   child:  Container( decoration: BoxDecoration(
                     border: Border.all(width: 1, color: Colors.green)
                   ), child: const ThirdHeading(heading: 'Already Have an account ?'))
               ),
            ],
          ),
        ),
      ),
    );
  }
}
