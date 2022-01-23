import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/calling.dart';
import 'package:food_delivery_app/custom_widgets/input_field.dart';
import 'package:food_delivery_app/utills/theme_colors.dart';

class ChatDetails extends StatefulWidget {
  const ChatDetails({Key? key}) : super(key: key);

  @override
  _ChatDetailsState createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                'Chat',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Card(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('assets/abdul.png'),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Abdul Basir',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'online',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Spacer(),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Dialling(),));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: ThemeColors().primary2,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(200))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.call,
                              color: ThemeColors().primary,
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 40,
              color: Colors.grey,
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Just to order ',
                    style:
                    TextStyle(backgroundColor: Colors.grey, fontSize: 20),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 40,
              color: ThemeColors().primary2,
              child: const Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Okay, for what level of spiciness?',
                    style:
                    TextStyle( fontSize: 20),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 40,
              color: Colors.grey,
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Okay, wait a minute 👍 ',
                    style:
                    TextStyle(backgroundColor: Colors.grey, fontSize: 20),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 40,
              color: ThemeColors().primary2,
              child: const Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Okay I'm waiting  👍",
                    style:
                    TextStyle( fontSize: 20),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InputField(hintText: 'Message', prefixIcon: Icons.chat,),
            ),

          ],
        ),
      ),
    );
  }
}
