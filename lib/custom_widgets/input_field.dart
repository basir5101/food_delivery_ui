import 'package:flutter/material.dart';


class InputField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  const InputField({Key? key, required this.hintText, required this.prefixIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 28.0, right: 28, top: 10, bottom: 10),
      child: TextFormField(
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.grey
                ),
                borderRadius: BorderRadius.circular(15)
            ),
            hintText: hintText,
            border: OutlineInputBorder(

                borderSide: BorderSide(
                    color: Colors.grey
                ),
                borderRadius: BorderRadius.circular(15)
            ),
          prefixIcon: Icon(prefixIcon, color: Colors.green,)
        ),
      ),
    );
  }
}
