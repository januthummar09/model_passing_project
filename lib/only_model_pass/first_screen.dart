import 'package:flutter/material.dart';
import 'package:model_passing_project/models/student_model.dart';
import 'package:model_passing_project/only_model_pass/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text("data"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(
                    data: StudentModel(
                      age: 22,
                      name: "janki",
                      surname: "thummar",
                    ),
                  ),
                ),
              );
            },
            child: const Text('send'),
          ),
        ],
      ),
    );
  }
}
