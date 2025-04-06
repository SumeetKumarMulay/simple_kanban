import 'package:flutter/material.dart';
import 'package:simple_kanban/utilities/models/task_model/task_model.dart';
import 'package:sizer/sizer.dart';

class CustomContainer extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final double elevation;
  final TaskModel data;
  final Function(bool?)? onCheckMark;
  final Function()? onDelete;

  const CustomContainer({
    super.key,
    this.padding = const EdgeInsets.fromLTRB(165, 60, 165, 60),
    this.borderRadius = 16.0,
    this.elevation = 6.0,
    required this.data,
    this.onCheckMark,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bool isDarkMode = theme.brightness == Brightness.dark;

    return Container(
      width: 90.w,
      height: 10.h,
      decoration: BoxDecoration(
        color: isDarkMode ? Color(0xFF262626) : Color(0xFFF7F5F6), // Background
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          if (!isDarkMode) // Only apply shadow in light mode
            BoxShadow(
              color: Colors.black.withAlpha(10),
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
        ],
        border: Border.all(
          color:
              isDarkMode
                  ? Color(0xFF262626)
                  : Color(0xFFE0E0E0), // Adaptive Border
          width: 1,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            child: Center(
              child: IconButton(onPressed: onDelete, icon: Icon(Icons.delete)),
            ),
          ),
          Positioned(
            top: 0,
            left: 40,
            bottom: 0,
            child: Center(
              child: Checkbox(value: data.isCompleted, onChanged: onCheckMark),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 50.w,
                  child: Center(
                    child: Visibility(
                      visible: data.title == null ? false : true,
                      child: Text(
                        data.title ?? "",
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50.w,
                  child: Center(
                    child: Text(
                      data.body,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: 15,
            child: Center(
              child: Text(
                'Priority ${data.priority == Priority.high
                    ? '!!!'
                    : data.priority == Priority.medium
                    ? '!!'
                    : '!'}',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
