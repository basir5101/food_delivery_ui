import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/bottom_menubar.dart';
import 'package:food_delivery_app/utills/theme_colors.dart';

import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
        fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white);
    return Scaffold(
      backgroundColor: ThemeColors().secondary,
      bottomNavigationBar: BottomMenuBar(),
      appBar: AppBar(
        title: Text('About Me'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Pattern.png'), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'My name is Abdul Basir.',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  height: 2,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'I am working as a frontend developer at Planndesign.com, india.',
                style: textStyle,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'I am studying at department of physics at BSMRSTU.',
                style: textStyle,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'I love to learn new technology that is the reason I am learning flutter .',
                style: textStyle,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'I want see myself as a MERN stack web developer and flutter developer at the end of 2022',
                style: textStyle,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Portfolio link:  https://abdul-basir.netlify.app/',
                style: textStyle,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () => launch('https://abdul-basir.netlify.app/'), child: Text('Portfolio'))
            ],
          ),
        ),
      ),
    );
  }
}
