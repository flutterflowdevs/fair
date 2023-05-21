// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:theme_park/components/map_popup/map_popup_widget.dart';

import 'index.dart'; // Imports other custom widgets

import 'index.dart'; // Imports other custom widgets

import 'package:cached_network_image/cached_network_image.dart';

import 'map_widget.dart';

class MarkerPin extends StatefulWidget {
  PinModel data;
  String filterType;

  MarkerPin(this.data, this.filterType);

  @override
  State<MarkerPin> createState() => _MarkerPinState();
}

class _MarkerPinState extends State<MarkerPin> {
  @override
  Widget build(BuildContext context) {
    return widget.data.filterType == widget.filterType ||
            widget.filterType == "All"
        ? InkWell(
            onTap: () {
              print(widget.data.title);
              if (widget.data.panelController.isAttached) {
                if (widget.data.panelController.isPanelOpen) {
                  widget.data.panelController.close();
                }
              }
              showBottomSheet(
                  context: context,
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  builder: (context) {
                    return MapPopupWidget(
                      dataReff: widget.data.apiData,
                    );
                  });
            },
            child: SizedBox(
              width: 50,
              height: 60,
              child: Container(
                height: 60,
                padding: const EdgeInsets.only(bottom: 20, right: 10, left: 6),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amusement-twoj3y/assets/w9bhxh0p23jb/pin.png"),
                    fit: BoxFit.fitHeight,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: CachedNetworkImage(
                    imageUrl: widget.data.img,
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
            ),
          )
        : SizedBox.shrink();
  }
}
