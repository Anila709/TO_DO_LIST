import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  const TasksTile(
      {super.key, required this.taskTitle, required this.longPresscallback});
  final String taskTitle;
  final Function longPresscallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPresscallback as VoidCallback,
      title: Text(
        taskTitle,
      ),
      trailing: const TaskCheckBox(),
    );
  }
}

class TaskCheckBox extends StatefulWidget {
  const TaskCheckBox({
    super.key,
  });

  @override
  State<TaskCheckBox> createState() => _TaskCheckBoxState();
}

class _TaskCheckBoxState extends State<TaskCheckBox> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: isChecked,
        onChanged: (newvalue) {
          setState(() {
            isChecked = newvalue;
          });
        });
  }
}

// import 'package:flutter/material.dart';

// class TasksTile extends StatefulWidget {
//   const TasksTile({super.key, required this.taskTitle});
//   final String taskTitle;

//   @override
//   State<TasksTile> createState() => _TasksTileState();
// }

// class _TasksTileState extends State<TasksTile> {
//   bool? isChecked;

//   getChecked(bool? newvalue) {
//     setState(() {
//       isChecked = newvalue;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//         widget.taskTitle,
//         style: const TextStyle(
//             //decoration: isChecked ? TextDecoration.lineThrough : null,
//             ),
//       ),
//       trailing: TaskCheckBox(
//         checkStatus: isChecked,
//         checkboxcallback: getChecked,
//       ),
//     );
//   }
// }

// class TaskCheckBox extends StatelessWidget {
//   const TaskCheckBox({super.key, this.checkStatus, this.checkboxcallback});

//   final bool? checkStatus;
//   final void Function(bool?)? checkboxcallback;

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(value: checkStatus, onChanged: checkboxcallback);
//   }
// }




// import 'package:flutter/material.dart';

// class TasksTile extends StatefulWidget {
//   const TasksTile({
//     super.key, required this.isChecked
//   });
//    final bool? isChecked;
//   @override
//   State<TasksTile> createState() => _TasksTileState();
// }

// class _TasksTileState extends State<TasksTile> {
  

//   void toggleCheckedState(bool checkboxstate) {
//     setState(() {
//       isChecked = checkboxstate;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const ListTile(
//       title: Text(
//         'MY first task'
//         style:TextStyle(
//           decoration:isChecked?TextDecoration.lineThrough:null,
//         ),
//       ),
//       trailing: TaskCheckBox(
//         isChecked: isChecked,
//         checkboxCallback: toggleCheckedState,
//       ),
//     );
//   }
// }

// class TaskCheckBox extends StatelessWidget {
//   const TaskCheckBox({
//     super.key,required this.isChecked,required this.checkboxCallback
//   });
//   final bool isChecked;
//   final Function checkboxCallback;
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//         value: isChecked,
//         onChanged:checkboxCallback, 
//         );
//   }
// }
