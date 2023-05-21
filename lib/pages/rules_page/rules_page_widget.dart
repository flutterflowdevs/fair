import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rules_page_model.dart';
export 'rules_page_model.dart';

class RulesPageWidget extends StatefulWidget {
  const RulesPageWidget({Key? key}) : super(key: key);

  @override
  _RulesPageWidgetState createState() => _RulesPageWidgetState();
}

class _RulesPageWidgetState extends State<RulesPageWidget> {
  late RulesPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RulesPageModel());
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
            icon: FaIcon(
              FontAwesomeIcons.arrowLeft,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'Rules to Follow',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 24.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 20.0, 10.0, 20.0),
                        child: Text(
                          'Dear Guests,\n\nWe try to offer a comfortable, safe and most memorable experience to all our guests. You have to follow the following measures to have wonderful experience at our park.\n\n- Entry is restricted to one person per ticket, which is valid only for a date and specified time.\n\n- Tickets are non-transferable and non-refundable.\n\n- Foods from outside and alcoholic drinks are not allowed inside park.\n\n- Intoxicated persons are not allowed to enter the park.\n\n- All persons, bags luggage and parcels and any other items is subject to security check at the point of entry to the park and at such other locations inside the park as we consider appropriate.\n\n- Please show common courtesy to fellow park guests and our service staff. \n\n- Do not use any foul language and engage in unsafe and offensive behavior.\n\n- Please maintain discipline in ride queue area. Members of the group are not allowed to join those already in queue.\n\n- Proper clothes must be worn all the times while visiting the park.\n\n- For your enjoyment, and in the interest of hygiene and safety, a dress code is enforced in the park.\n\n- Always wear Polyester or Nylon costumes (t-shirts, shorts, bermudas, three-fourths, or swim suits) while enjoying the Water Rides.\n \n- Dress like Sarees, churidars/salwars, dupatta, formal pants, shirts, burkhas/pardas, school uniforms, denims (jeans and three-fourth jeans), cargos and indecent attires are not permitted in the water park and certain high thrill rides.\n\n- Do not wear scarfs or shawls while enjoying a ride to ensure the safety of all the visitors at park. \nSince many rides inside the park are adventurous in nature, guests are advised to follow safety instructions of lifeguards, ride operators and displayed instructions near rides for safe riding. \n\n- Management will not be responsible for any injury/accident due to negligence of Guests.\nPools are shallow. Do not dive into pools.\nPregnant Women, heart patients, persons with high blood pressure and those prone to epilepsy are advised to avoid fast/adventurous rides.\nParents are advised to pay special attention to their Children. Children should be accompanied by adults.\n\n- There are certain height and weight restrictions in some rides for safety reasons.\nGuests below stipulated height and guests above certain weights are not permitted in some rides.\n\n- Guests may have to leave the park even before closing time if the situation warrants.\nThe management reserves the right to close any ride at any time for safety/technical reasons without prior notice.\n\n- The management has the right to cancel l the ticket and remove any person from the park premises, if misbehaviour or violation of park rules is reported from his/her part.\n\n- Smoking is prohibited in the common areas of the park. Kindly use the specified area for the same.\n\n- Pet animals are not allowed inside the park.',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).blkToWyt,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
