import 'package:flutter/material.dart';

showDefaultBottomSheet({required BuildContext context,
  required Widget child,
  bool isScrollControlled = true}) async {
  await showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      isScrollControlled: isScrollControlled,
      useSafeArea: true,
      builder: (BuildContext context) {
        return FractionallySizedBox(
            heightFactor: 0.7,
            child: BottomSheetContainer(child: child));
      });
}

class BottomSheetContainer extends StatelessWidget {
  const BottomSheetContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 13),
      decoration: const BoxDecoration(
        color:  Color(0xFFf2f2f7),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(13),
          topRight: Radius.circular(13),
        ),
      ),
      child: child,
    );
  }
}