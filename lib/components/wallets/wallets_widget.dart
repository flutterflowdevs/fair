import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'wallets_model.dart';
export 'wallets_model.dart';

class WalletsWidget extends StatefulWidget {
  const WalletsWidget({Key? key}) : super(key: key);

  @override
  _WalletsWidgetState createState() => _WalletsWidgetState();
}

class _WalletsWidgetState extends State<WalletsWidget>
    with TickerProviderStateMixin {
  late WalletsModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 700.ms,
          duration: 200.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 800.ms,
          duration: 200.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 900.ms,
          duration: 200.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 1000.ms,
          duration: 200.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 1100.ms,
          duration: 200.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation7': AnimationInfo(
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
    _model = createModel(context, () => WalletsModel());
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
              sigmaX: 5.0,
              sigmaY: 5.0,
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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
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
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: 10.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                              ),
                            ),
                            Text(
                              'NEW PAYMENT METHOD',
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: 10.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().update(() {
                                    FFAppState().containerVisibility = true;
                                  });
                                  Navigator.pop(context);

                                  context.pushNamed('PaymentSuccess');
                                },
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 10.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Container(
                                    width: 250.0,
                                    height: 160.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Image.network(
                                              'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Visa_Inc._logo.svg/1200px-Visa_Inc._logo.svg.png',
                                              width: 80.0,
                                              height: 18.0,
                                              fit: BoxFit.contain,
                                            ),
                                            Image.asset(
                                              'assets/images/8_copy.png',
                                              width: 80.0,
                                              height: 18.0,
                                              fit: BoxFit.contain,
                                            ),
                                            Image.asset(
                                              'assets/images/American-Express-Color.png',
                                              width: 120.0,
                                              height: 40.0,
                                              fit: BoxFit.contain,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              'assets/images/Discover-logo.png',
                                              width: 130.0,
                                              height: 50.0,
                                              fit: BoxFit.contain,
                                            ),
                                            Image.asset(
                                              'assets/images/Logo-Diners-Club-International_copy.png',
                                              width: 50.0,
                                              height: 25.0,
                                              fit: BoxFit.contain,
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation1']!),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: 10.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 100.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.apiResultfog =
                                                await FairLandGroup
                                                    .createFairTicketCall
                                                    .call(
                                              methodUrl: 'create_fair_ticket',
                                              standardCount:
                                                  FFAppState().standardCount,
                                              standardPrice: 25,
                                              expressCount:
                                                  FFAppState().expressCount,
                                              expressPrice: 39,
                                              vipCount: FFAppState().vipCount,
                                              vipPrice: 45,
                                              userId: currentUserUid,
                                            );
                                            if ((_model
                                                    .apiResultfog?.succeeded ??
                                                true)) {
                                              FFAppState().update(() {
                                                FFAppState()
                                                    .containerVisibility = true;
                                              });
                                              Navigator.pop(context);

                                              context
                                                  .pushNamed('PaymentSuccess');
                                            }

                                            setState(() {});
                                          },
                                          onDoubleTap: () async {
                                            FFAppState().update(() {
                                              FFAppState().containerVisibility =
                                                  true;
                                            });
                                            Navigator.pop(context);

                                            context.pushNamed('PaymentSuccess');
                                          },
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 10.0,
                                            child: Container(
                                              width: 100.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.network(
                                                    'https://logos-world.net/wp-content/uploads/2020/07/PayPal-Logo.png',
                                                    width: 100.0,
                                                    height: 100.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation2']!),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().update(() {
                                              FFAppState().containerVisibility =
                                                  true;
                                            });
                                            Navigator.pop(context);

                                            context.pushNamed('PaymentSuccess');
                                          },
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 10.0,
                                            child: Container(
                                              width: 100.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.network(
                                                    'https://download.logo.wine/logo/Apple_Pay/Apple_Pay-Logo.wine.png',
                                                    width: 65.0,
                                                    height: 80.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation3']!),
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: 10.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 100.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().update(() {
                                              FFAppState().containerVisibility =
                                                  true;
                                            });
                                            Navigator.pop(context);

                                            context.pushNamed('PaymentSuccess');
                                          },
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 10.0,
                                            child: Container(
                                              width: 100.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.network(
                                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Skrill_logo.svg/2560px-Skrill_logo.svg.png',
                                                    width: 100.0,
                                                    height: 20.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation4']!),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().update(() {
                                              FFAppState().containerVisibility =
                                                  true;
                                            });
                                            Navigator.pop(context);

                                            context.pushNamed('PaymentSuccess');
                                          },
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 10.0,
                                            child: Container(
                                              width: 100.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.network(
                                                    'https://1000logos.net/wp-content/uploads/2020/04/PayU-Logo.png',
                                                    width: 100.0,
                                                    height: 35.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation5']!),
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: 10.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 100.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().update(() {
                                              FFAppState().containerVisibility =
                                                  true;
                                            });
                                            Navigator.pop(context);

                                            context.pushNamed('PaymentSuccess');
                                          },
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 10.0,
                                            child: Container(
                                              width: 100.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/9_copy.png',
                                                    width: 100.0,
                                                    height: 35.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation6']!),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: Container(
                                          width: 100.0,
                                          height: 80.0,
                                          decoration: BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                        ),
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
                  ),
                ),
              ),
            ),
            if (false)
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [],
                      ),
                      Text(
                        'NEXT',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).blkToWyt,
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: Icon(
                          Icons.arrow_forward,
                          color: FlutterFlowTheme.of(context).blkToWyt,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation7']!),
              ),
          ],
        ),
      ],
    );
  }
}
