import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../my_roster_page/my_roster_page_widget.dart';
import '../my_training_page/my_training_page_widget.dart';
import '../work_market_page/work_market_page_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class ClockInOutPageWidget extends StatefulWidget {
  const ClockInOutPageWidget({Key key}) : super(key: key);

  @override
  _ClockInOutPageWidgetState createState() => _ClockInOutPageWidgetState();
}

class _ClockInOutPageWidgetState extends State<ClockInOutPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance?.addPostFrameCallback((_) async {
      setState(() => FFAppState().MenuShow = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<AvaliableWeekdayRecord>>(
      stream: queryAvaliableWeekdayRecord(
        parent: currentUserReference,
        queryBuilder: (avaliableWeekdayRecord) => avaliableWeekdayRecord.where(
            'Date',
            isEqualTo: dateTimeFormat('EEEE', getCurrentTimestamp)),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<AvaliableWeekdayRecord> clockInOutPageAvaliableWeekdayRecordList =
            snapshot.data;
        final clockInOutPageAvaliableWeekdayRecord =
            clockInOutPageAvaliableWeekdayRecordList.isNotEmpty
                ? clockInOutPageAvaliableWeekdayRecordList.first
                : null;
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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.05,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (FFAppState().MenuShow) {
                                setState(() => FFAppState().MenuShow = false);
                                return;
                              } else {
                                setState(() => FFAppState().MenuShow = true);
                                return;
                              }
                            },
                            text: '',
                            icon: Icon(
                              Icons.menu,
                              size: 15,
                            ),
                            options: FFButtonOptions(
                              width: 130,
                              height: 40,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 12,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.95,
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
                            'Clock In/Out',
                            style: FlutterFlowTheme.of(context).title1.override(
                                  fontFamily: 'Dancing Script',
                                  fontSize: 50,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if ((FFAppState().MenuShow) == true)
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 1,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'MENU',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 100,
                                        ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                          reverseDuration:
                                              Duration(milliseconds: 0),
                                          child: MyRosterPageWidget(),
                                        ),
                                      );
                                    },
                                    text: 'My Roster',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 75,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 75,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 12,
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Clock In/Out',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 75,
                                      color: Color(0xFF7567F8),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 75,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 12,
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              MyTrainingPageWidget(),
                                        ),
                                        (r) => false,
                                      );
                                    },
                                    text: 'My Training',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 75,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 75,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 12,
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              WorkMarketPageWidget(),
                                        ),
                                        (r) => false,
                                      );
                                    },
                                    text: 'Work Market',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 75,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 75,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 12,
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await signOut();
                                      await Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              HomePageWidget(),
                                        ),
                                        (r) => false,
                                      );
                                    },
                                    text: 'LogOut',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 75,
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 75,
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
                            ],
                          ),
                        ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: MediaQuery.of(context).size.height * 0.8,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 100,
                                decoration: BoxDecoration(),
                                child: Text(
                                  'Clock in/out',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 70,
                                      ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 100,
                                decoration: BoxDecoration(),
                                child: Text(
                                  'Time:',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 50,
                                      ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 100,
                                decoration: BoxDecoration(),
                                child: Text(
                                  dateTimeFormat('EEEE', getCurrentTimestamp),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 35,
                                      ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 100,
                                decoration: BoxDecoration(),
                                child: Text(
                                  dateTimeFormat('d/M/y', getCurrentTimestamp),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 35,
                                      ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 100,
                                decoration: BoxDecoration(),
                                child: Text(
                                  dateTimeFormat('jms', getCurrentTimestamp),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 35,
                                      ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 100,
                                decoration: BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 10, 0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            if (clockInOutPageAvaliableWeekdayRecord !=
                                                null) {
                                              if (clockInOutPageAvaliableWeekdayRecord
                                                  .isClockin) {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text('Alert'),
                                                      content: Text(
                                                          'Already Clock in'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text('Ok'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              } else {
                                                final avaliableWeekdayUpdateData =
                                                    createAvaliableWeekdayRecordData(
                                                  clockIn: getCurrentTimestamp,
                                                );
                                                await clockInOutPageAvaliableWeekdayRecord
                                                    .reference
                                                    .update(
                                                        avaliableWeekdayUpdateData);
                                              }
                                            } else {
                                              final avaliableWeekdayCreateData =
                                                  createAvaliableWeekdayRecordData(
                                                date: dateTimeFormat('EEEE',
                                                    getCurrentTimestamp),
                                                isClockin: true,
                                                avaliable: false,
                                                clockIn: getCurrentTimestamp,
                                                uid: currentUserUid,
                                              );
                                              await AvaliableWeekdayRecord
                                                      .createDoc(
                                                          currentUserReference)
                                                  .set(
                                                      avaliableWeekdayCreateData);
                                            }
                                          },
                                          text: 'Clock In',
                                          options: FFButtonOptions(
                                            width: 300,
                                            height: 200,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
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
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            if (clockInOutPageAvaliableWeekdayRecord !=
                                                null) {
                                              if (clockInOutPageAvaliableWeekdayRecord
                                                  .isClockOut) {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text('Alert'),
                                                      content: Text(
                                                          'Already Clock out'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text('Ok'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              } else {
                                                final avaliableWeekdayUpdateData =
                                                    createAvaliableWeekdayRecordData(
                                                  clockOut: getCurrentTimestamp,
                                                  isClockOut: true,
                                                );
                                                await clockInOutPageAvaliableWeekdayRecord
                                                    .reference
                                                    .update(
                                                        avaliableWeekdayUpdateData);
                                              }
                                            } else {
                                              final avaliableWeekdayCreateData =
                                                  createAvaliableWeekdayRecordData(
                                                date: dateTimeFormat('EEEE',
                                                    getCurrentTimestamp),
                                                avaliable: true,
                                                uid: currentUserUid,
                                                isClockOut: true,
                                                clockOut: getCurrentTimestamp,
                                              );
                                              await AvaliableWeekdayRecord
                                                      .createDoc(
                                                          currentUserReference)
                                                  .set(
                                                      avaliableWeekdayCreateData);
                                            }
                                          },
                                          text: 'Clock Out',
                                          options: FFButtonOptions(
                                            width: 300,
                                            height: 200,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
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
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(),
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
