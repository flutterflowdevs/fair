// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom widgets

import 'index.dart'; // Imports other custom widgets

import 'package:cached_network_image/cached_network_image.dart';

import 'dart:async';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'marker_pin.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({
    Key? key,
    this.width,
    this.height,
    required this.data,
  }) : super(key: key);

  final double? width;
  final double? height;
  final dynamic data;

  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  List<PinModel> listPin = [];
  String filterType = "All";
  bool upDown = false;
  Timer? _timer;
  int timeStart = 1;
  double animationValue = 0;
  int animationTimeInMilliSeconds = 800;
  PanelController panelController = PanelController();
  String all =
      "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amusement-twoj3y/assets/8ui5t6b4qtqs/all.png";
  String rideIcon =
      "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amusement-twoj3y/assets/eyb4mh8cp0ed/ride_3.png";
  String foodIcon =
      "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amusement-twoj3y/assets/2dfdoxeu1un1/food.png";
  String showIcon =
      "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amusement-twoj3y/assets/6rmqspifhlml/show_2.png";

  @override
  void initState() {
    _animationController = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 500));
    _animationController!.repeat(reverse: true);

    listPin.add(PinModel(
        "Pin 0", 4, "Ride", rideIcon, panelController, widget.data["data"][0]));
    listPin.add(PinModel(
        "Pin 1", 5, "Ride", rideIcon, panelController, widget.data["data"][1]));
    listPin.add(PinModel(
        "Pin 2", 6, "Ride", rideIcon, panelController, widget.data["data"][2]));
    listPin.add(PinModel(
        "Pin 3", 8, "Ride", rideIcon, panelController, widget.data["data"][3]));
    listPin.add(PinModel("Pin 4", 10, "Ride", rideIcon, panelController,
        widget.data["data"][4]));
    listPin.add(PinModel("Pin 5", 11, "Ride", rideIcon, panelController,
        widget.data["data"][5]));
    listPin.add(PinModel(
        "Pin 6", 9, "Food", foodIcon, panelController, widget.data["data"][6]));
    listPin.add(PinModel("Pin 7", 14, "Food", foodIcon, panelController,
        widget.data["data"][7]));
    listPin.add(PinModel("Pin 8", 13, "Food", foodIcon, panelController,
        widget.data["data"][8]));
    listPin.add(PinModel(
        "Pin 9", 3, "Show", showIcon, panelController, widget.data["data"][9]));
    listPin.add(PinModel("Pin 10", 7, "Show", showIcon, panelController,
        widget.data["data"][10]));
    listPin.add(PinModel("Pin 11", 12, "Show", showIcon, panelController,
        widget.data["data"][11]));
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          if (panelController.isAttached) {
            if (panelController.isPanelOpen) {
              panelController.close();
            }
          }
        },
        child: SizedBox(
          width: widget.width,
          height: widget.height,
          child: InteractiveViewer(
            minScale: 1,
            maxScale: 2,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CachedNetworkImage(
                  imageUrl:
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amusement-twoj3y/assets/dklrdrhu46pf/map.jpg',
                  fit: BoxFit.cover,
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height * 0.25,
                    left: MediaQuery.of(context).size.height * 0.08,
                    child: FadeTransition(
                      opacity: _animationController!,
                      child: Container(
                        width: MediaQuery.of(context).size.width * .09,
                        height: MediaQuery.of(context).size.width * .09,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(
                              MediaQuery.of(context).size.width * .2)),
                        ),
                      ),
                    )),
                Positioned(
                    top: MediaQuery.of(context).size.height * 0.15,
                    left: MediaQuery.of(context).size.height * 0.07,
                    child: Container(
                      width: MediaQuery.of(context).size.width * .1,
                      height: MediaQuery.of(context).size.width * .3,
                      decoration: BoxDecoration(
                        //color: Colors.blue,
                        // border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(
                            MediaQuery.of(context).size.width * .2)),
                      ),
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amusement-twoj3y/assets/6hnugr04vjk1/Untitled-1.png",
                      ),
                    )),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    bottom: MediaQuery.of(context).size.height * 0.40 +
                        animationValue,
                    left: MediaQuery.of(context).size.width * 0.20,
                    child: MarkerPin(listPin[0], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    bottom: MediaQuery.of(context).size.height * 0.47 +
                        animationValue,
                    right: MediaQuery.of(context).size.width * 0.30,
                    child: MarkerPin(listPin[1], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    top: MediaQuery.of(context).size.height * 0.15 +
                        animationValue,
                    left: MediaQuery.of(context).size.width * 0.6,
                    child: MarkerPin(listPin[2], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    left: MediaQuery.of(context).size.width * .35,
                    bottom: MediaQuery.of(context).size.height * .47 +
                        animationValue,
                    child: MarkerPin(listPin[3], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    right: MediaQuery.of(context).size.width * .10,
                    bottom: MediaQuery.of(context).size.height * .25 +
                        animationValue,
                    child: MarkerPin(listPin[4], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    left: MediaQuery.of(context).size.width * .35,
                    bottom: MediaQuery.of(context).size.height * .25 +
                        animationValue,
                    child: MarkerPin(listPin[5], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    left: MediaQuery.of(context).size.width * .30,
                    top: MediaQuery.of(context).size.height * .25 +
                        animationValue,
                    child: MarkerPin(listPin[6], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    right: MediaQuery.of(context).size.width * .05,
                    bottom: MediaQuery.of(context).size.height * .35 +
                        animationValue,
                    child: MarkerPin(listPin[7], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    left: MediaQuery.of(context).size.width * .42,
                    bottom: MediaQuery.of(context).size.height * .36 +
                        animationValue,
                    child: MarkerPin(listPin[8], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    left: MediaQuery.of(context).size.width * .43,
                    top: MediaQuery.of(context).size.height * .12 +
                        animationValue,
                    child: MarkerPin(listPin[9], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    left: MediaQuery.of(context).size.width * .55,
                    bottom: MediaQuery.of(context).size.height * .35 +
                        animationValue,
                    child: MarkerPin(listPin[10], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    right: MediaQuery.of(context).size.width * .01,
                    top: MediaQuery.of(context).size.height * .02 +
                        animationValue,
                    child: MarkerPin(listPin[11], filterType)),
                Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: SlidingUpPanel(
                        color: Colors.transparent,
                        controller: panelController,
                        minHeight: MediaQuery.of(context).size.height * .08,
                        maxHeight: MediaQuery.of(context).size.height * .30,
                        boxShadow: [],
                        panel: Container(
                          color: Colors.transparent,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 15,
                                left: MediaQuery.of(context).size.width * .40,
                                right: MediaQuery.of(context).size.width * .40,
                                child: Container(
                                  width: MediaQuery.of(context).size.width * .2,
                                  height:
                                      MediaQuery.of(context).size.width * .2,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .2))),
                                ),
                              ),
                              Positioned(
                                  top: 15,
                                  left: MediaQuery.of(context).size.width * .40,
                                  right:
                                      MediaQuery.of(context).size.width * .40,
                                  child: Icon(
                                    Icons.maximize_outlined,
                                    color: Colors.pink,
                                    size: 50,
                                  )),
                              Positioned(
                                top: MediaQuery.of(context).size.height * .05,
                                right: 0,
                                left: 0,
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 25),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                  ),
                                  child: Column(
                                    children: [
                                      // const Icon(
                                      //   Icons.maximize_outlined,
                                      //   color: Colors.pink,
                                      //   size: 50,
                                      // ),
                                      const Text(
                                        "Filter by categories",
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: Wrap(
                                          children: [
                                            slidingUpPanelWidget(
                                              "All",
                                              all,
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                            ),
                                            slidingUpPanelWidget(
                                              "Ride",
                                              rideIcon,
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                            ),
                                            slidingUpPanelWidget(
                                              "Show",
                                              showIcon,
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                            ),
                                            slidingUpPanelWidget(
                                              "Food",
                                              foodIcon,
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  void startTimer() {
    Timer.periodic(Duration(milliseconds: animationTimeInMilliSeconds),
        (timer) {
      setState(() {
        if (animationValue == 0) {
          animationValue = 10;
        } else {
          animationValue = 0;
        }
      });
    });
  }

  Widget slidingUpPanelWidget(String title, String img, Color backColor) {
    bool isSelected = false;
    if (title == filterType) {
      isSelected = true;
    }

    return InkWell(
      onTap: () {
        setState(() {
          filterType = title;
        });
        panelController.close();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: FlutterFlowTheme.of(context).secondaryBackground,
          border: Border.all(
              color: isSelected
                  ? FlutterFlowTheme.of(context).primaryColor
                  : Colors.white,
              width: 3),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: isSelected ? 10.0 : 0,
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(color: Colors.black, fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: CachedNetworkImage(
                imageUrl: img,
                width: 25,
                height: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PinModel {
  String title;
  int id;
  String filterType;
  String img;
  PanelController panelController;
  dynamic apiData;

  PinModel(this.title, this.id, this.filterType, this.img, this.panelController,
      this.apiData);
}
