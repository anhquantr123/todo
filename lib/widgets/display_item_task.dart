import 'package:flutter/material.dart';
import 'package:todo/constants/contrants.dart';
import 'package:todo/models/models.dart';

class DisplayItemTask extends StatelessWidget {
  final List<Task> listTask;
  final bool isCompletedTask;
  const DisplayItemTask(
      {super.key, required this.listTask, this.isCompletedTask = false});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final height = isCompletedTask ? size.height * 0.25 : size.height * 0.3;
    final messageTask = isCompletedTask
        ? "Chưa có công việc nào được hoàn thành !"
        : "Thêm một công việc mới của bạn";
    return Container(
      height: height,
      width: size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: !isCompletedTask ? secondColor : null),
      child: listTask.isEmpty
          ? Center(child: Text(messageTask))
          : ListView.builder(
              itemCount: listTask.length,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 5),
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "hello anh quan ",
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
    );
  }
}
