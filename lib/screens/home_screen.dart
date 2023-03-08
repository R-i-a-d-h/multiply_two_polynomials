import 'package:flutter/material.dart';
import 'package:multiply_two_polynomials/widgets/custom_button.dart';

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
            CustomButton(onTap: (){}, text: "Iterative Algorithm"),
            CustomButton(onTap: (){}, text: "Divide and Conquer Algorithm"),
            CustomButton(onTap: (){}, text: "Iterative Vs Divide And Conquer"),
            CustomButton(onTap: (){}, text: "iterative Algorithm'"),




          ],
        ),
      ),
    );
  }
}
