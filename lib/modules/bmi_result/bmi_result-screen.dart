import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;

  BMIResultScreen({
    @required this.result,
    @required this.isMale,
    @required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        appBar: AppBar(
            title: Text('BMI Result'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_rounded),
              //this step is optional bc the app creates arrow by default .
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Gender:${isMale ? 'Male' : 'Female'}',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text('Result:$result',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Text('Age:$age',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
  }
}