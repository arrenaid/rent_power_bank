import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
    required this.title,
    this.execute,
    this.enabled = true,
    this.height = 40,
  });

  final String title;
  final GestureTapCallback? execute;
  final bool enabled;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            enabled ? Color(0xFFc0fab9) : Color(0xFFd3fbce),
            enabled ? Color(0xFFa1ed58) : Color(0xFFbdf38b),
          ],
        ),
      ),
      child: ElevatedButton(
        onPressed: enabled ? execute : null,

        style: ButtonStyle(
          elevation: const WidgetStatePropertyAll(0),
          backgroundColor: WidgetStateProperty.resolveWith<Color>((
            Set<WidgetState> states,
          ) {
            return Colors.transparent;
          }),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: enabled ? Color(0xFF0B0B0B) : Color(0xFF545454),
            fontFamily: 'Inter',
            fontSize: 18,
            fontWeight: FontWeight.w300,
            letterSpacing: 3,
          ),
        ),
      ),
    );
  }
}
