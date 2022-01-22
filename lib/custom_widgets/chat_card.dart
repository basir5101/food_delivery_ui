import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/chat_detials.dart';

class ChatCard extends StatefulWidget {
  const ChatCard({Key? key}) : super(key: key);

  @override
  _ChatCardState createState() => _ChatCardState();
}

class _ChatCardState extends State<ChatCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatDetails(),));
      },
      child: Card(
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
                Text('Abdul Basir', style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
                Text('Your Order Just Delivered', style: TextStyle(
                  color: Colors.grey
                ),)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text('10:25 PM', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
