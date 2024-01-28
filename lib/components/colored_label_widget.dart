import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';


class ColoredLabelWidget extends StatefulWidget {
  const ColoredLabelWidget({
    super.key,
    String? text,
  }) : this.text = text ?? 'Initial';

  final String text;

  @override
  State<ColoredLabelWidget> createState() => _ColoredLabelWidgetState();
}

class _ColoredLabelWidgetState extends State<ColoredLabelWidget> {


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
      height: 26,
      constraints:const BoxConstraints(
        minWidth: 100,
      ),
      decoration: BoxDecoration(
        color:const Color(0xFFB4B3B9),
        borderRadius: BorderRadius.circular(4),
      ),
      alignment:const AlignmentDirectional(0, 0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
        child: Text(
          widget.text,
          style: GoogleFonts.readexPro(
            textStyle: const TextStyle(fontSize: 14,color:Color(0xFF14181B),fontWeight: FontWeight.w400)
          ),
        ),
      ),
    );
  }
}
