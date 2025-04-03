import 'package:flutter/material.dart';
import 'package:rich_readmore/rich_readmore.dart';
import 'package:simple_kanban/utilities/models/task_model/task_model.dart';
import 'package:sizer/sizer.dart';

class CustomContainer extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final double elevation;
  final TaskModel data;
  final Function(bool?)? onCheckMark;

  const CustomContainer({
    super.key,
    this.padding = const EdgeInsets.fromLTRB(165, 60, 165, 60),
    this.borderRadius = 16.0,
    this.elevation = 6.0,
    required this.data,
    this.onCheckMark,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bool isDarkMode = theme.brightness == Brightness.dark;

    return Container(
      width: 90.w,
      height: 20.h,
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
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2.5,
          mainAxisSpacing: 2,
        ),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Center(child: Text(data.title ?? "")),
          Center(
            child: Text(
              'Priority ${data.priority == Priority.high
                  ? '!!!'
                  : data.priority == Priority.medium
                  ? '!!'
                  : '!'}',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Center(
              child: RichReadMoreText.fromString(
                text: data.body,
                settings: LineModeSettings(trimLines: 2),
              ),
            ),
          ),
          Center(
            child: Checkbox(value: data.isCompleted, onChanged: onCheckMark),
          ),
        ],
      ),
    );
  }
}
