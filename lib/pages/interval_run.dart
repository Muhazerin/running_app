import 'package:flutter/material.dart';
import 'package:running_app/widgets/my_google_map_widget.dart';

class IntervalRun extends StatefulWidget {
  const IntervalRun({super.key});

  @override
  State<IntervalRun> createState() => _IntervalRunState();
}

class _IntervalRunState extends State<IntervalRun> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const MyGoogleMapWidget(),
          bottomBox(),
        ],
      ),
    );
  }

  Widget bottomBox() {
    return Container(
      height: 200.0,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600,
            spreadRadius: 1,
            blurRadius: 15,
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
    );
  }
}
