import 'package:flutter/material.dart';
import 'package:multiply_two_polynomials/widgets/custom_button.dart';

import 'multiply_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  'images/math.png',
                )),
            const SizedBox(height: 8),
            CustomButton(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MultiplyScreen()),
              );
            }, text: "Iterative Algorithm".toUpperCase()),
            CustomButton(onTap: (){}, text: "Divide and Conquer Algorithm".toUpperCase()),
            CustomButton(onTap: (){}, text: "Iterative Vs Divide And Conquer".toUpperCase()),
            CustomButton(onTap: (){}, text: "Complexity".toUpperCase()),




          ],
        ),
      ),
    );
  }



}


