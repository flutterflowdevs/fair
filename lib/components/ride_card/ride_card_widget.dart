import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ride_card_model.dart';
export 'ride_card_model.dart';

class RideCardWidget extends StatefulWidget {
  const RideCardWidget({
    Key? key,
    this.data,
    this.userRecord,
  }) : super(key: key);

  final dynamic data;
  final UsersRow? userRecord;

  @override
  _RideCardWidgetState createState() => _RideCardWidgetState();
}

class _RideCardWidgetState extends State<RideCardWidget> {
  late RideCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RideCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.9,
      decoration: BoxDecoration(
        color: Color(0x00FFFFFF),
      ),
      child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(-1.0, -1.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(
                  'Rides_detail',
                  queryParams: {
                    'data': serializeParam(
                      widget.data,
                      ParamType.JSON,
                    ),
                  }.withoutNulls,
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.55,
                height: 460.0,
                decoration: BoxDecoration(
                  color: Color(0x00FEF8F3),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFC7DCEF),
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 220.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFC7DCEF),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 15.0, 15.0, 15.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 20.0),
                                          child: Text(
                                            getJsonField(
                                              widget.data,
                                              r'''$.title''',
                                            ).toString(),
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Lato',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .blkToWyt,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 35.0),
                                          child: Text(
                                            getJsonField(
                                              widget.data,
                                              r'''$.short_details''',
                                            ).toString(),
                                            textAlign: TextAlign.start,
                                            maxLines: 4,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .blkToWyt,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(1.0, -0.75),
            child: Container(
              width: 130.0,
              height: 130.0,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network(
                getJsonField(
                  widget.data,
                  r'''$.img''',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.85, -0.9),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0xFF73A88D),
                shape: BoxShape.circle,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (valueOrDefault<bool>(
                    FFAppState().userFavRideIds.contains(getJsonField(
                          widget.data,
                          r'''$.id''',
                        )),
                    false,
                  ))
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        setState(() {
                          FFAppState().removeFromUserFavRideIds(getJsonField(
                            widget.data,
                            r'''$.id''',
                          ));
                        });
                        await UsersTable().update(
                          data: {
                            'favourite_ids': FFAppState().userFavRideIds,
                          },
                          matchingRows: (rows) => rows.eq(
                            'id',
                            currentUserUid,
                          ),
                        );
                      },
                      child: Icon(
                        Icons.favorite,
                        color: Color(0xFFFF0000),
                        size: 40.0,
                      ),
                    ),
                  if (!valueOrDefault<bool>(
                    FFAppState().userFavRideIds.contains(getJsonField(
                          widget.data,
                          r'''$.id''',
                        )),
                    false,
                  ))
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        setState(() {
                          FFAppState().addToUserFavRideIds(getJsonField(
                            widget.data,
                            r'''$.id''',
                          ));
                        });
                        await UsersTable().update(
                          data: {
                            'favourite_ids': FFAppState().userFavRideIds,
                          },
                          matchingRows: (rows) => rows.eq(
                            'id',
                            currentUserUid,
                          ),
                        );
                      },
                      child: Icon(
                        Icons.favorite,
                        color: FlutterFlowTheme.of(context).whiteToWhite,
                        size: 40.0,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
