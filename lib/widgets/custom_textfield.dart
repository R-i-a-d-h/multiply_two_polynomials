import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {

 late int maxLines;
 late String hintText ;
 String text ="" ;
 late bool isEnabled;
 final controller ;

  CustomTextField( { Key? key,this.text = "" , required this.maxLines,required this.hintText ,required this.isEnabled ,required this.controller ,}):  super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 16.0,bottom: 8.0 ,left: 16.0,right: 16.0),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.multiline,
        enabled: isEnabled,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: text,
          hintText: hintText,
          border: const OutlineInputBorder(
            borderSide: BorderSide(width: 3, ),
          ),

        ),

      ),
    );
  }
}
