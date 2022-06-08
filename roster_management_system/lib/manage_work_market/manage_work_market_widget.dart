import '../add_new_task_page/add_new_task_page_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../manage_train/manage_train_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class ManageWorkMarketWidget extends StatefulWidget {
  const ManageWorkMarketWidget({Key key}) : super(key: key);

  @override
  _ManageWorkMarketWidgetState createState() => _ManageWorkMarketWidgetState();
}

class _ManageWorkMarketWidgetState extends State<ManageWorkMarketWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance?.addPostFrameCallback((_) async {
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ManageTrainWidget(),
        ),
      );
    });
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
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
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
                        'Roster Management System',
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
                  if (((FFAppState().MenuShow) == true) ||
                      responsiveVisibility(
                        context: context,
                        desktop: false,
                      ))
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
                                  setState(() => FFAppState().MenuShow = false);
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ManageTrainWidget(),
                                    ),
                                  );
                                },
                                text: 'Manage My Training',
                                options: FFButtonOptions(
                                  width: 130,
                                  height: 75,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
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
                                text: 'Manage Work Market',
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
                                  await signOut();
                                  await Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomePageWidget(),
                                    ),
                                    (r) => false,
                                  );
                                },
                                text: 'LogOut',
                                options: FFButtonOptions(
                                  width: 130,
                                  height: 75,
                                  color: FlutterFlowTheme.of(context).alternate,
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.08,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AddNewTaskPageWidget(),
                                ),
                              );
                            },
                            text: 'Add New Task',
                            options: FFButtonOptions(
                              width: double.infinity,
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
                              borderRadius: 0,
                            ),
                          ),
                        ),
                        Expanded(
                          child: StreamBuilder<List<TaskRecord>>(
                            stream: queryTaskRecord(),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                );
                              }
                              List<TaskRecord> gridViewTaskRecordList =
                                  snapshot.data;
                              return GridView.builder(
                                padding: EdgeInsets.zero,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  childAspectRatio: 1,
                                ),
                                scrollDirection: Axis.vertical,
                                itemCount: gridViewTaskRecordList.length,
                                itemBuilder: (context, gridViewIndex) {
                                  final gridViewTaskRecord =
                                      gridViewTaskRecordList[gridViewIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 5, 10),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF808AC7),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Text(
                                              gridViewTaskRecord.taskName,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 35,
                                                      ),
                                            ),
                                          ),
                                          Text(
                                            gridViewTaskRecord.taskDes,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                var confirmDialogResponse =
                                                    await showDialog<bool>(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title:
                                                                  Text('Alert'),
                                                              content: Text(
                                                                  'Sure Delete?'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext,
                                                                          false),
                                                                  child: Text(
                                                                      'Cancel'),
                                                                ),
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext,
                                                                          true),
                                                                  child: Text(
                                                                      'Confirm'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        ) ??
                                                        false;
                                                if (confirmDialogResponse) {
                                                  await gridViewTaskRecord
                                                      .reference
                                                      .delete();
                                                }
                                              },
                                              text: 'Delete',
                                              options: FFButtonOptions(
                                                width: 130,
                                                height: 40,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
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
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
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
    );
  }
}
