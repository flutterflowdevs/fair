import '/auth/supabase_auth/auth_util.dart';
import '/components/new_nav_bar/new_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfilePageModel extends FlutterFlowModel {
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
