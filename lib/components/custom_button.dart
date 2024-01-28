import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    super.key,
    required this.text,
    Color? backgroundColor,
    Color? textColor,
  })  : this.backgroundColor = backgroundColor ?? const Color(0xFF1EC5E5),
        this.textColor = textColor ?? Colors.white;

  final String? text;
  final Color backgroundColor;
  final Color textColor;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      constraints: BoxConstraints(
        minWidth: 100,
      ),
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: AlignmentDirectional(0, 0),
      child: Align(
        alignment: AlignmentDirectional(0, 0),
        child: Text(
          widget.text!,
          style: GoogleFonts.readexPro(
            color: widget.textColor,
          ),
        ),
      ),
    );
  }
}
