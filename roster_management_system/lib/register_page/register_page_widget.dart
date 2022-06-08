import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main_page/main_page_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPageWidget extends StatefulWidget {
  const RegisterPageWidget({Key key}) : super(key: key);

  @override
  _RegisterPageWidgetState createState() => _RegisterPageWidgetState();
}

class _RegisterPageWidgetState extends State<RegisterPageWidget> {
  TextEditingController emailController;
  TextEditingController passwordfieldController;
  bool passwordfieldVisibility;
  TextEditingController passwordfield2Controller;
  bool passwordfield2Visibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordfieldController = TextEditingController();
    passwordfieldVisibility = false;
    passwordfield2Controller = TextEditingController();
    passwordfield2Visibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 100,
                height: 100,
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.2,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryColor,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Text(
                    'Roster Management System',
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Dancing Script',
                          fontSize: 50,
                        ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/roster-management-system-ik6933/assets/i62vd4c6chh5/icon1.png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 1,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child: Text(
                                  'Email:',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .title1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 50,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      controller: emailController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        'emailController',
                                        Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'Email Address',
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .title1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 50,
                                          ),
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child: Text(
                                  'Password:',
                                  style: FlutterFlowTheme.of(context)
                                      .title1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 50,
                                      ),
                                ),
                              ),
                              TextFormField(
                                controller: passwordfieldController,
                                onChanged: (_) => EasyDebounce.debounce(
                                  'passwordfieldController',
                                  Duration(milliseconds: 2000),
                                  () => setState(() {}),
                                ),
                                autofocus: true,
                                obscureText: !passwordfieldVisibility,
                                decoration: InputDecoration(
                                  hintText: 'Enter you password',
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => passwordfieldVisibility =
                                          !passwordfieldVisibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      passwordfieldVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: Color(0xFF757575),
                                      size: 22,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 50,
                                    ),
                                keyboardType: TextInputType.visiblePassword,
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child: Text(
                                  'Re-Password:',
                                  style: FlutterFlowTheme.of(context)
                                      .title1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 50,
                                      ),
                                ),
                              ),
                              TextFormField(
                                controller: passwordfield2Controller,
                                onChanged: (_) => EasyDebounce.debounce(
                                  'passwordfield2Controller',
                                  Duration(milliseconds: 2000),
                                  () => setState(() {}),
                                ),
                                autofocus: true,
                                obscureText: !passwordfield2Visibility,
                                decoration: InputDecoration(
                                  hintText: 'Enter you password',
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => passwordfield2Visibility =
                                          !passwordfield2Visibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      passwordfield2Visibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: Color(0xFF757575),
                                      size: 22,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 50,
                                    ),
                                keyboardType: TextInputType.visiblePassword,
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  if (passwordfieldController?.text !=
                                      passwordfield2Controller?.text) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Passwords don\'t match!',
                                        ),
                                      ),
                                    );
                                    return;
                                  }

                                  final user = await createAccountWithEmail(
                                    context,
                                    emailController.text,
                                    passwordfieldController.text,
                                  );
                                  if (user == null) {
                                    return;
                                  }

                                  final avaliableWeekdayCreateData =
                                      createAvaliableWeekdayRecordData(
                                    date: 'Monday',
                                  );
                                  await AvaliableWeekdayRecord.createDoc(
                                          currentUserReference)
                                      .set(avaliableWeekdayCreateData);
                                  await Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MainPageWidget(),
                                    ),
                                    (r) => false,
                                  );
                                },
                                text: 'Register',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 60,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 50,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: 12,
                                ),
                              ),
                            ],
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
      ),
    );
  }
}
