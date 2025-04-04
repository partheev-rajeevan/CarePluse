import 'package:flutter/material.dart';
import 'package:frontend/core/theme/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Text(
          'History',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: AppColors.teal),
        ),
      ),
    );
  }
}
