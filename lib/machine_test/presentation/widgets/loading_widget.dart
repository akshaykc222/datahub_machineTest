import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class LoadingWidget extends StatelessWidget {
  final Widget child;
  final bool isLoading;
  const LoadingWidget({Key? key, required this.child, required this.isLoading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    loadingWidget() {
      return Positioned.fill(
        child: Align(
          alignment: Alignment.center,
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                color: AppColors.greyColor,
                borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                strokeWidth: 1,
              ),
            ),
          ),
        ),
      );
    }

    return Stack(
      children: [child, isLoading ? loadingWidget() : const SizedBox()],
    );
  }
}
