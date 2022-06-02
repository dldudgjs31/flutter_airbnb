import 'package:flutter/material.dart';
import 'package:flutter_airbnb/styles.dart';

class CommonFormField extends StatelessWidget {

  final prefixText;
  final hintText;

  const CommonFormField({required this.prefixText, required this.hintText});


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top:30, left:20, bottom: 10),
            hintText: hintText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey, width: 2))
          ),
        ),
        Positioned(child: Text(prefixText, style: overLine(),),top: 8,left: 20,)
      ],
    );
  }
}
