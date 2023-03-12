import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:multiply_two_polynomials/models/iterative_algorithm.dart';
import 'package:multiply_two_polynomials/widgets/custom_button.dart';

import '../widgets/custom_textfield.dart';
class MultiplyScreen extends StatefulWidget {

  MultiplyScreen({Key? key}) : super(key: key);

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
                Multiply(firstController.text ,secondController.text);
              });
            }, text: "Multiply".toUpperCase()),
            CustomTextField(text: text,maxLines: 8,hintText: "",isEnabled: true, controller: thirdController,),

          ],
        ),
      )),
    );
  }
  void Multiply(String p,String q)  {
    IterativeAlgorithm iterativeAlgorithm =  IterativeAlgorithm(p, q);
    HashMap<String, String> info = iterativeAlgorithm.multiplyInfo();
    text =
        "P = ${info["2"]!}\nQ = ${info["3"]!}\nP * Q = ${info["1"]!}\nDuration  = ${info["6"]!} ns\nComplexity  = ${info["4"]!}\nNumber of operations  = ${info["5"]!}" ;

  }
}
