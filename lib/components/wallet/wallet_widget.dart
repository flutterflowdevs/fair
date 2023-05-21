import '/components/wallets/wallets_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'wallet_model.dart';
export 'wallet_model.dart';

class WalletWidget extends StatefulWidget {
  const WalletWidget({
    Key? key,
    this.totalAmount,
  }) : super(key: key);

  final int? totalAmount;

  @override
  _WalletWidgetState createState() => _WalletWidgetState();
}

class _WalletWidgetState extends State<WalletWidget>
    with TickerProviderStateMixin {
  late WalletModel _model;

  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: Offset(0.0, -42.00000000000001),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: Offset(0.0, -0.0),
          end: Offset(0.0, -100.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: Offset(200.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(200.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: Offset(50.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'columnOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(100.0, 0.0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 50.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'columnOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, 50.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WalletModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(0.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 12.0,
              sigmaY: 12.0,
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0x00FFFFFF),
              ),
            ),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Color(0x005B5B5B),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 10.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().update(() {
                                  FFAppState().containerVisibility = true;
                                });
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Color(0x82FFFFFF),
                                size: 30.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 90.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.29,
                              height: 10.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                              ),
                            ),
                            Text(
                              'CHOSSE A PAYMENT METHOD',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF696969),
                                    fontSize: 12.0,
                                    letterSpacing: 2.0,
                                  ),
                            )
                                .animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation']!)
                                .animateOnActionTrigger(
                                  animationsMap[
                                      'textOnActionTriggerAnimation']!,
                                ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (false)
                              Container(
                                width: MediaQuery.of(context).size.width * 0.29,
                                height: 10.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                              ),
                            Container(
                              width: 341.7,
                              height: 160.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Image.network(
                                        'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Visa_Inc._logo.svg/1200px-Visa_Inc._logo.svg.png',
                                        width: 80.0,
                                        height: 18.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '9836',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w800,
                                              ),
                                        ),
                                        Text(
                                          '****',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w800,
                                              ),
                                        ),
                                        Text(
                                          '****',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w800,
                                              ),
                                        ),
                                        Text(
                                          '9836',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w800,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'CARD HOLDER',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFFBEBEBE),
                                                        fontSize: 10.0,
                                                      ),
                                            ),
                                            Text(
                                              'Anujesh Dahiya',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF696969),
                                                        fontSize: 13.0,
                                                        letterSpacing: 1.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'EXPIRES',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFFBEBEBE),
                                                        fontSize: 10.0,
                                                      ),
                                            ),
                                            Text(
                                              '04/24',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF696969),
                                                        fontSize: 13.0,
                                                        letterSpacing: 1.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                                .animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation1']!)
                                .animateOnActionTrigger(
                                  animationsMap[
                                      'containerOnActionTriggerAnimation1']!,
                                ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (false)
                              Container(
                                width: MediaQuery.of(context).size.width * 0.29,
                                height: 10.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                              ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (animationsMap[
                                              'textOnActionTriggerAnimation'] !=
                                          null) {
                                        animationsMap[
                                                'textOnActionTriggerAnimation']!
                                            .controller
                                            .forward(from: 0.0);
                                      }
                                      if (animationsMap[
                                              'containerOnActionTriggerAnimation1'] !=
                                          null) {
                                        animationsMap[
                                                'containerOnActionTriggerAnimation1']!
                                            .controller
                                            .forward(from: 0.0);
                                      }
                                      if (animationsMap[
                                              'containerOnActionTriggerAnimation2'] !=
                                          null) {
                                        animationsMap[
                                                'containerOnActionTriggerAnimation2']!
                                            .controller
                                            .forward(from: 0.0);
                                      }
                                      if (animationsMap[
                                              'columnOnActionTriggerAnimation1'] !=
                                          null) {
                                        animationsMap[
                                                'columnOnActionTriggerAnimation1']!
                                            .controller
                                            .forward(from: 0.0);
                                      }
                                      if (animationsMap[
                                              'columnOnActionTriggerAnimation2'] !=
                                          null) {
                                        animationsMap[
                                                'columnOnActionTriggerAnimation2']!
                                            .controller
                                            .forward(from: 0.0);
                                      }
                                      await Future.delayed(
                                          const Duration(milliseconds: 600));
                                      Navigator.pop(context);
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        barrierColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (bottomSheetContext) {
                                          return Padding(
                                            padding: MediaQuery.of(
                                                    bottomSheetContext)
                                                .viewInsets,
                                            child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  1.0,
                                              child: WalletsWidget(),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 10.0,
                                      shape: const CircleBorder(),
                                      child: Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.black,
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                  )
                                      .animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation2']!)
                                      .animateOnActionTrigger(
                                        animationsMap[
                                            'containerOnActionTriggerAnimation2']!,
                                      ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: Text(
                                        'Click here for Payment',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 14.0,
                                              letterSpacing: 1.0,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'PAYMENT METHOD',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF696969),
                                            fontSize: 13.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                  ],
                                )
                                    .animateOnPageLoad(animationsMap[
                                        'columnOnPageLoadAnimation1']!)
                                    .animateOnActionTrigger(
                                      animationsMap[
                                          'columnOnActionTriggerAnimation1']!,
                                    ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.29,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                  ),
                                ),
                                Text(
                                  'YOUR RECIEPT',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF696969),
                                        fontSize: 12.0,
                                        letterSpacing: 2.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.29,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                  ),
                                ),
                                Text(
                                  'E-TICKETS : WONDER FAIR',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        letterSpacing: 2.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (false)
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.29,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                  ),
                                ),
                              Expanded(
                                child: Container(
                                  width: 100.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '24 Jan 2023',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF696969),
                                              fontSize: 12.0,
                                              letterSpacing: 2.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (false)
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.29,
                                    height: 10.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                    ),
                                  ),
                                Expanded(
                                  child: Container(
                                    width: 100.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Standard',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                                fontSize: 14.0,
                                                letterSpacing: 2.0,
                                              ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.29,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                FFAppState()
                                                    .standardCount
                                                    .toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                          fontSize: 14.0,
                                                          letterSpacing: 2.0,
                                                        ),
                                              ),
                                              Text(
                                                '\$ 25',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                          fontSize: 14.0,
                                                          letterSpacing: 2.0,
                                                        ),
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
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (false)
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.29,
                                    height: 10.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                    ),
                                  ),
                                Expanded(
                                  child: Container(
                                    width: 100.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Express  ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                                fontSize: 14.0,
                                                letterSpacing: 2.0,
                                              ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.29,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                FFAppState()
                                                    .expressCount
                                                    .toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                          fontSize: 14.0,
                                                          letterSpacing: 2.0,
                                                        ),
                                              ),
                                              Text(
                                                '  \$ 39',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                          fontSize: 14.0,
                                                          letterSpacing: 2.0,
                                                        ),
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
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (false)
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.29,
                                    height: 10.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                    ),
                                  ),
                                Expanded(
                                  child: Container(
                                    width: 100.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'VIP        ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                                fontSize: 14.0,
                                                letterSpacing: 2.0,
                                              ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.29,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                FFAppState()
                                                    .vipCount
                                                    .toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                          fontSize: 14.0,
                                                          letterSpacing: 2.0,
                                                        ),
                                              ),
                                              Text(
                                                '\$ 45',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                          fontSize: 14.0,
                                                          letterSpacing: 2.0,
                                                        ),
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
                          ),
                        ],
                      )
                          .animateOnPageLoad(
                              animationsMap['columnOnPageLoadAnimation2']!)
                          .animateOnActionTrigger(
                            animationsMap['columnOnActionTriggerAnimation2']!,
                          ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.2, 0.0),
              child: Container(
                width: double.infinity,
                height: 82.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: 80.0,
                      decoration: BoxDecoration(
                        color: Color(0x00FFC64E),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.stickyNote,
                            color: FlutterFlowTheme.of(context).blkToWyt,
                            size: 24.0,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'YOUR ORDER',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      letterSpacing: 1.0,
                                    ),
                              ),
                              Text(
                                'CLICK TO CHECKOUT',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF535353),
                                      fontSize: 13.0,
                                      letterSpacing: 1.0,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '\$ ${widget.totalAmount?.toString()}',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                    ),
                  ],
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation3']!),
            ),
          ],
        ),
      ],
    );
  }
}
