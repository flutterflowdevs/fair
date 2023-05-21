import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/new_nav_bar/new_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'map_view_model.dart';
export 'map_view_model.dart';

class MapViewWidget extends StatefulWidget {
  const MapViewWidget({Key? key}) : super(key: key);

  @override
  _MapViewWidgetState createState() => _MapViewWidgetState();
}

class _MapViewWidgetState extends State<MapViewWidget> {
  late MapViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapViewModel());
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

    return FutureBuilder<ApiCallResponse>(
      future: FairLandGroup.getAllAmusementParksDetailsCall.call(
        methodUrl: 'get_all_amusement_park_details',
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primary,
              ),
            ),
          );
        }
        final mapViewGetAllAmusementParksDetailsResponse = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 1.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: MediaQuery.of(context).size.height * 0.87,
                      child: custom_widgets.MapWidget(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: MediaQuery.of(context).size.height * 0.87,
                        data:
                            mapViewGetAllAmusementParksDetailsResponse.jsonBody,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: wrapWithModel(
                        model: _model.newNavBarModel,
                        updateCallback: () => setState(() {}),
                        child: NewNavBarWidget(),
                      ),
                    ),
                    FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).primary,
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).accent1,
                      icon: Icon(
                        Icons.logout,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        GoRouter.of(context).prepareAuthEvent();
                        await authManager.signOut();
                        GoRouter.of(context).clearRedirectLocation();

                        context.goNamedAuth('LoginPage', context.mounted);
                      },
                    ),
                    Text(
                      valueOrDefault<String>(
                        functions
                            .printList(FFAppState().userFavRideIds.toList()),
                        'NA',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            fontSize: 22.0,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
