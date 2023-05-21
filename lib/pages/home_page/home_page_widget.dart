import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'imageOnPageLoadAnimation1': AnimationInfo(
      loop: true,
      reverse: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, -20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'imageOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.linear,
          delay: 250.ms,
          duration: 600.ms,
          begin: Offset(-100.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'imageOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        BlurEffect(
          curve: Curves.easeIn,
          delay: 200.ms,
          duration: 700.ms,
          begin: Offset(10.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultkrj =
          await FairLandGroup.getAuthenticateUserRecordsCall.call(
        userId: currentUserUid,
      );
      if ((_model.apiResultkrj?.succeeded ?? true)) {
        setState(() {
          FFAppState().userFavRideIds = functions
              .getIntListFromJson(
                  FairLandGroup.getAuthenticateUserRecordsCall.userRecord(
                (_model.apiResultkrj?.jsonBody ?? ''),
              ))
              .toList();
        });
      }
      await Future.delayed(const Duration(milliseconds: 1000));

      context.goNamed('map_view');
    });
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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.65,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF749EFB), Color(0xFF2E60EE)],
                          stops: [0.0, 1.0],
                          begin: AlignmentDirectional(0.0, 1.0),
                          end: AlignmentDirectional(0, -1.0),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, -0.65),
                    child: Container(
                      width: 500.0,
                      height: 500.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, -0.29),
                    child: Image.asset(
                      'assets/images/giphy_(1).gif',
                      width: 300.0,
                      height: 320.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.97, 0.24),
                    child: Image.asset(
                      'assets/images/ridesss_copy.png',
                      width: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 550.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Welcome!',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .displaySmall
                                .override(
                                  fontFamily: 'Libre Franklin',
                                  color: Colors.white,
                                  fontSize: 50.0,
                                ),
                          ),
                          Text(
                            'Discover the amazing world of\nfun and childhood',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                          if (false)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 50.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed(
                                    'map_view',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.rightToLeft,
                                        duration: Duration(milliseconds: 650),
                                      ),
                                    },
                                  );
                                },
                                text: 'Get Started',
                                options: FFButtonOptions(
                                  width: 325.0,
                                  height: 60.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFFFE6370),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 18.0,
                                      ),
                                  elevation: 2.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.96, 0.61),
                    child: SvgPicture.asset(
                      'assets/images/639cc9bfbcb1915406c8e470_floating-yellow-fish.svg',
                      width: 55.0,
                      fit: BoxFit.cover,
                    ).animateOnPageLoad(
                        animationsMap['imageOnPageLoadAnimation1']!),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.05, 0.87),
                    child: SvgPicture.asset(
                      'assets/images/639cc911e553bfe33b7cadee_floating-candy-bubbles.svg',
                      width: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.98, -0.74),
                    child: Image.asset(
                      'assets/images/ballon.png',
                      width: 100.0,
                      fit: BoxFit.cover,
                    ).animateOnPageLoad(
                        animationsMap['imageOnPageLoadAnimation2']!),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.69, 1.05),
                    child: SvgPicture.asset(
                      'assets/images/639cc911e553bfe33b7cadee_floating-candy-bubbles.svg',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.59, 0.99),
                    child: Image.asset(
                      'assets/images/starfishh.png',
                      width: 55.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Image.asset(
                    'assets/images/png-transparent-starry-sky-during-nighttime-atmosphere-sky-space-astronomy-night-space-pic-miscellaneous-texture-food-thumbnail.png',
                    width: double.infinity,
                    height: 1.0,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.28, -0.89),
                    child: Image.asset(
                      'assets/images/My_project_(2).png',
                      height: 96.0,
                      fit: BoxFit.cover,
                    ).animateOnPageLoad(
                        animationsMap['imageOnPageLoadAnimation3']!),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
