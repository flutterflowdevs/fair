// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '../../components/ride_card/ride_card_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ComplicatedImageDemo extends StatefulWidget {
  const ComplicatedImageDemo({
    Key? key,
    this.width,
    this.height,
    this.listOfData,
    required this.userRecord,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<dynamic>? listOfData;
  final UsersRow userRecord;

  @override
  _ComplicatedImageDemoState createState() => _ComplicatedImageDemoState();
}

class _ComplicatedImageDemoState extends State<ComplicatedImageDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider.builder(
          itemCount: widget.listOfData!.length,
          options: CarouselOptions(
            enableInfiniteScroll: false,
            autoPlay: false,
            height: MediaQuery.of(context).size.height * 0.45,
            aspectRatio: 2.0,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            enlargeCenterPage: true,
          ),
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) {
            return RideCardWidget(
              data: widget.listOfData![itemIndex],
              userRecord: widget.userRecord,
              key: widget.key,
            );
          }),
    );
  }
}
