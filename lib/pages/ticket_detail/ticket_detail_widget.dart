import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ticket_detail_model.dart';
export 'ticket_detail_model.dart';

class TicketDetailWidget extends StatefulWidget {
  const TicketDetailWidget({
    Key? key,
    this.data,
  }) : super(key: key);

  final dynamic data;

  @override
  _TicketDetailWidgetState createState() => _TicketDetailWidgetState();
}

class _TicketDetailWidgetState extends State<TicketDetailWidget>
    with TickerProviderStateMixin {
  late TicketDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  var hasContainerTriggered1 = false;
  var hasContainerTriggered2 = false;
  var hasContainerTriggered3 = false;
  final animationsMap = {
    'containerOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: Offset(0.8, 0.8),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: Offset(0.8, 0.8),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: Offset(0.8, 0.8),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TicketDetailModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFF749EFB),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Ticket Details',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 10.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/My_project_(1).png',
                                      width: double.infinity,
                                      height: 250.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (!valueOrDefault<bool>(
                                functions.isValueZero(getJsonField(
                                  widget.data,
                                  r'''$.standard_count''',
                                )),
                                true,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 20.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 20.0, 0.0),
                                            child: Container(
                                              width: 120.0,
                                              height: 60.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x00FFFFFF),
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                '${getJsonField(
                                                  widget.data,
                                                  r'''$.standard_count''',
                                                ).toString()} X ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .blkToWyt,
                                                          fontSize: 16.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 10.0,
                                          child: Container(
                                            width: 100.0,
                                            height: 80.0,
                                            decoration: BoxDecoration(
                                              color: Color(0x00FFFFFF),
                                              image: DecorationImage(
                                                fit: BoxFit.contain,
                                                image: Image.asset(
                                                  'assets/images/3_copy.png',
                                                ).image,
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Standard',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.black,
                                                            fontSize: 20.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '\$ ${getJsonField(
                                                        widget.data,
                                                        r'''$.standard_price''',
                                                      ).toString()}',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.black,
                                                            fontSize: 20.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ).animateOnActionTrigger(
                                            animationsMap[
                                                'containerOnActionTriggerAnimation1']!,
                                            hasBeenTriggered:
                                                hasContainerTriggered1),
                                      ),
                                    ],
                                  ),
                                ),
                              if (!valueOrDefault<bool>(
                                functions.isValueZero(getJsonField(
                                  widget.data,
                                  r'''$.express_count''',
                                )),
                                true,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 20.0, 20.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 25.0, 0.0),
                                            child: Container(
                                              width: 120.0,
                                              height: 60.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x00FFFFFF),
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                '${getJsonField(
                                                  widget.data,
                                                  r'''$.express_count''',
                                                ).toString()} X ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .blkToWyt,
                                                          fontSize: 16.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 10.0,
                                          child: Container(
                                            width: 100.0,
                                            height: 80.0,
                                            decoration: BoxDecoration(
                                              color: Color(0x00FFFFFF),
                                              image: DecorationImage(
                                                fit: BoxFit.contain,
                                                image: Image.asset(
                                                  'assets/images/3_copy.png',
                                                ).image,
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Express',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.black,
                                                            fontSize: 20.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '\$ ${getJsonField(
                                                        widget.data,
                                                        r'''$.express_price''',
                                                      ).toString()}',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.black,
                                                            fontSize: 20.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ).animateOnActionTrigger(
                                            animationsMap[
                                                'containerOnActionTriggerAnimation2']!,
                                            hasBeenTriggered:
                                                hasContainerTriggered2),
                                      ),
                                    ],
                                  ),
                                ),
                              if (!valueOrDefault<bool>(
                                functions.isValueZero(getJsonField(
                                  widget.data,
                                  r'''$.vip_count''',
                                )),
                                true,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 20.0, 20.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 25.0, 0.0),
                                            child: Container(
                                              width: 120.0,
                                              height: 60.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x00FFFFFF),
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                '${getJsonField(
                                                  widget.data,
                                                  r'''$.vip_count''',
                                                ).toString()} X ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .blkToWyt,
                                                          fontSize: 16.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 10.0,
                                          child: Container(
                                            width: 100.0,
                                            height: 80.0,
                                            decoration: BoxDecoration(
                                              color: Color(0x00FFFFFF),
                                              image: DecorationImage(
                                                fit: BoxFit.contain,
                                                image: Image.asset(
                                                  'assets/images/3_copy.png',
                                                ).image,
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '   VIP   ',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.black,
                                                            fontSize: 20.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '\$ ${getJsonField(
                                                        widget.data,
                                                        r'''$.vip_price''',
                                                      ).toString()}',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.black,
                                                            fontSize: 20.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ).animateOnActionTrigger(
                                            animationsMap[
                                                'containerOnActionTriggerAnimation3']!,
                                            hasBeenTriggered:
                                                hasContainerTriggered3),
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 20.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Booking Id:- ${functions.getBookingRefNumber(getJsonField(
                                    widget.data,
                                    r'''$.ticket_ref_id''',
                                  ).toString())}',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 40.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Total Amount Paid -\$ ${functions.getSumOfTicketValue(widget.data!).toString()}',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 26.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (false)
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 82.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Visibility(
                          visible: false,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.family_restroom,
                                      color:
                                          FlutterFlowTheme.of(context).blkToWyt,
                                      size: 24.0,
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Total Value',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                                fontSize: 16.0,
                                                letterSpacing: 1.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                '\$ 175.00',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 20.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ).animateOnActionTrigger(
                        animationsMap['containerOnActionTriggerAnimation4']!,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
