import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BMIResult extends StatelessWidget {
  bool gender = true;
  int height = 175;
  int weigth = 80;
  int age = 20;

  BMIResult({
    super.key,
    required this.gender,
    required this.height,
    required this.weigth,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.grey,
        elevation: 0,
        title: const Text(
          'Result',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 80,
              vertical: 40,
            ),
            child: Container(
              padding: const EdgeInsetsDirectional.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[400],
              ),
              height: 150,
              width: 200,
              child: Column(
                children: [
                  const Text(
                    'Information',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '- Gander : ${gender ? 'Male' : 'Female'} \n- Height : $height CM \n- Weight : $weigth KG \n- Age : $age Years',
                    style: const TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 30,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[400],
            ),
            child: Column(
              children: [
                const Text(
                  'Your Daily Calories is',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '${calResult().round()}',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  double calResult() {
    double R;
    if (gender == true) {
      R = (13.75 * weigth) + (5 * height) - (6.76 * age) + 66;
    } else {
      R = (9.56 * weigth) + (1.85 * height) - (4.68 * age) + 655;
    }
    return R;
  }
}
