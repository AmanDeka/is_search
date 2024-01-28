import 'package:transparent_image/transparent_image.dart';

import '/components/colored_label_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:is_search/theme.dart';
import '/components/custom_button.dart';

List<Widget> labels(String text1, String text2) {
  List<Widget> ret = [];
  if (text1 != '') {
    ret.add(ColoredLabelWidget(
      text: text1,
    ));
  }

  if (text2 != '') {
    ret.add(
      Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
        child: ColoredLabelWidget(
          text: text2,
        ),
      ),
    );
  }

  return ret;
}

class InternshipCardWidget extends StatefulWidget {
  const InternshipCardWidget({
    super.key,
    required this.internshipName,
    required this.companyName,
    required this.image,
    required this.locationName,
    required this.start,
    required this.duration,
    required this.stipend,
    required this.l1,
    required this.l2
  });

  final String? internshipName;
  final String? companyName;
  final String? image;
  final String? locationName;
  final String? start;
  final String? duration;
  final String? stipend;
  final String? l1;
  final String? l2;

  @override
  State<InternshipCardWidget> createState() => _InternshipCardWidgetState();
}

class _InternshipCardWidgetState extends State<InternshipCardWidget> {
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
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: secondaryBackground,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 6, 12, 12),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 6),
                        child: Text(
                          widget.internshipName!,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      Opacity(
                        opacity: 0.6,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                          child: Text(
                            widget.companyName!,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: (widget.image == '')
                        ? (Image.memory(
                            kTransparentImage,
                            width: 57,
                            height: 57,
                            fit: BoxFit.cover,
                          ))
                        : (Image.asset(
                            widget.image!,
                            width: 57,
                            height: 57,
                            fit: BoxFit.cover,
                          )),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 12),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.location_on_sharp,
                    color: secondaryText,
                    size: 20,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                    child: Text(
                      widget.locationName!,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 12),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.play_circle_outline_sharp,
                      color: secondaryText,
                      size: 20,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                      child: Text(
                        widget.start!,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(26, 0, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.calendar_today_sharp,
                        color: secondaryText,
                        size: 20,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                        child: Text(
                          widget.duration!,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 12),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                FaIcon(
                  FontAwesomeIcons.moneyBill,
                  color: secondaryText,
                  size: 20,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                  child: Text(
                    widget.stipend!,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 12),
            child: Row(
                mainAxisSize: MainAxisSize.max,
                children: labels(widget.l1!, widget.l2!)),
          ),
          Opacity(
            opacity: 0.3,
            child: Divider(
              thickness: 1,
              indent: 12,
              endIndent: 12,
              color: secondaryText,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 6, 12, 12),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 11, 0),
                  child: ButtonWidget(
                    text: 'View Details',
                    backgroundColor: Colors.white,
                    textColor: Color(0xFF1EC5E5),
                  ),
                ),
                ButtonWidget(
                  text: 'Apply',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
