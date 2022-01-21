import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/brand_button.dart';
import 'package:food_delivery_app/custom_widgets/input_field.dart';
import 'package:food_delivery_app/custom_widgets/second_heading.dart';
import 'package:food_delivery_app/custom_widgets/theme_button.dart';
import 'package:food_delivery_app/custom_widgets/third_heading.dart';
import 'package:food_delivery_app/screens/add_bio.dart';
import 'package:food_delivery_app/screens/home.dart';
import 'package:food_delivery_app/screens/signup.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
              const SecondHeading(heading: 'Login To Your Account'),
              const InputField(
                hintText: 'Email',
                prefixIcon: Icons.email,
              ),
              const InputField(
                hintText: 'Password',
                prefixIcon: Icons.lock,
              ),
              const ThirdHeading(
                heading: "Or Continue With",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  BrandButton(btnText: 'Facebook', brandIcon: Icons.facebook,),
                  BrandButton(btnText: 'Google', brandIcon: Icons.email_outlined,)
                ],
              ),
              const ThirdHeading(heading: 'Forgot Your Password?'),
              const ThemeButton(btnText: 'Login', route: AddBioData()),
              InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Signup()),
                  ),
                  // onTap: () {
                  //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget.route,));
                  // },
                  child:  Container( decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.green)
                  ), child: const ThirdHeading(heading: 'Create New Account ?'))
              ),
            ],
          ),
        ),
      ),
    );
  }
}
