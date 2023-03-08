import 'package:flutter/material.dart';

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

            Padding(
              padding: const EdgeInsets.only(top: 16,left: 16,bottom: 8,right: 16),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF61D7A8), // Background color
                  ),
                  child: const Text('iterative Algorithm'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8,left: 16,bottom: 8,right: 16),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF61D7A8), // Background color
                  ),
                  child: const Text('iterative Algorithm'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
