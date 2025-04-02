import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final double elevation;

  const CustomContainer({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.fromLTRB(165, 60, 165, 60),
    this.borderRadius = 16.0,
    this.elevation = 6.0,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bool isDarkMode = theme.brightness == Brightness.dark;

    return Container(
      padding: padding,
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
      child: child,
    );
  }
}

