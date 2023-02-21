import 'package:flutter/material.dart';
import 'package:model_passing_project/models/student_model.dart';

class SecondScreen extends StatefulWidget {
  final StudentModel? data;
  const SecondScreen({Key? key, this.data}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name :${widget.data!.name}"),
            Text("Surname :${widget.data!.surname}"),
            Text("age :${widget.data!.age}"),
          ],
        ),
      ),
    );
  }
}
