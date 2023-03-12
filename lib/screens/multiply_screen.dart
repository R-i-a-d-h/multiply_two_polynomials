import 'package:flutter/material.dart';
import 'package:multiply_two_polynomials/widgets/custom_button.dart';

import '../widgets/custom_textfield.dart';
class MultiplyScreen extends StatefulWidget {
  const MultiplyScreen({Key? key}) : super(key: key);

  @override
  State<MultiplyScreen> createState() => _MultiplyScreenState();
}

class _MultiplyScreenState extends State<MultiplyScreen> {
  final firstController = TextEditingController();
  final secondController = TextEditingController();
  final thirdController = TextEditingController();
  String text  ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CustomTextField(maxLines: 6,hintText: "a+bx^1+cx^2 ...",isEnabled: true,controller:firstController,),
            CustomTextField(maxLines: 6,hintText: "a'+b'x^1+c'x^2 ...",isEnabled: true, controller: secondController,),
            CustomButton(onTap: (){
              setState(() {
                text= "update text";
              });
            }, text: "Multiply".toUpperCase()),
            CustomTextField(text: text,maxLines: 8,hintText: "",isEnabled: true, controller: thirdController,),

          ],
        ),
      )),
    );
  }
}
