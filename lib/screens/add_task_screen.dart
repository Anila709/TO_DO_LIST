import 'package:flutter/material.dart';

class AddTaskSreen extends StatelessWidget {
  const AddTaskSreen(this.abcd, {super.key});

  final Function abcd;

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.lightBlueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          const SizedBox(height: 15.0),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlue,
              //padding: const EdgeInsets.all(16.0),
              //textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              abcd(newTaskTitle);
            },
            child: const Text(
              'Add',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
