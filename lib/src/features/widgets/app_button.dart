
import 'package:flutter/material.dart';
import 'package:mead_learn_app/src/features/widgets/app_loading.dart';


class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final bool isLoading;
  final Color? color;

  const AppButton({
    Key? key,
    this.onPressed,
    required this.label,
    this.isLoading = false,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        child: isLoading
            ? const AppLoading()
            : Center(
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
