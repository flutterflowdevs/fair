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

class MapViewModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for new_nav_bar component.
  late NewNavBarModel newNavBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    newNavBarModel = createModel(context, () => NewNavBarModel());
  }

  void dispose() {
    newNavBarModel.dispose();
  }

  /// Additional helper methods are added here.

}
