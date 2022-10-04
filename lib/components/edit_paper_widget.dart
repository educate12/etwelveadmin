import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class EditPaperWidget extends StatefulWidget {
  const EditPaperWidget({
    Key? key,
    this.paper,
  }) : super(key: key);

  final DocumentReference? paper;

  @override
  _EditPaperWidgetState createState() => _EditPaperWidgetState();
}

class _EditPaperWidgetState extends State<EditPaperWidget> {
  String uploadedFileUrl1 = '';
  String uploadedFileUrl2 = '';
  TextEditingController? textController1;
  TextEditingController? textController2;
  TextEditingController? textController3;
  TextEditingController? textController4;
  TextEditingController? textController5;
  TextEditingController? textController6;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    textController4?.dispose();
    textController5?.dispose();
    textController6?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PapersRecord>(
      stream: PapersRecord.getDocument(widget.paper!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 30,
              height: 30,
              child: SpinKitFadingCube(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 30,
              ),
            ),
          );
        }
        final containerPapersRecord = snapshot.data!;
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Enter Paper Details to Edit',
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Ubuntu',
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Text(
                              'Make sure you provide all the necessary information.',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
                          child: TextFormField(
                            controller: textController1 ??=
                                TextEditingController(
                              text: containerPapersRecord.subject,
                            ),
                            onChanged: (_) => EasyDebounce.debounce(
                              'textController1',
                              Duration(milliseconds: 100),
                              () => setState(() {}),
                            ),
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'subject',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Ubuntu',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
                          child: TextFormField(
                            controller: textController2 ??=
                                TextEditingController(
                              text: containerPapersRecord.grade?.toString(),
                            ),
                            onChanged: (_) => EasyDebounce.debounce(
                              'textController2',
                              Duration(milliseconds: 100),
                              () => setState(() {}),
                            ),
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'grade',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Ubuntu',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
                          child: TextFormField(
                            controller: textController3 ??=
                                TextEditingController(
                              text: containerPapersRecord.syllabus,
                            ),
                            onChanged: (_) => EasyDebounce.debounce(
                              'textController3',
                              Duration(milliseconds: 100),
                              () => setState(() {}),
                            ),
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'syllabus',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Ubuntu',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
                          child: TextFormField(
                            controller: textController4 ??=
                                TextEditingController(
                              text: containerPapersRecord.year?.toString(),
                            ),
                            onChanged: (_) => EasyDebounce.debounce(
                              'textController4',
                              Duration(milliseconds: 100),
                              () => setState(() {}),
                            ),
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'year',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Ubuntu',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
                          child: TextFormField(
                            controller: textController5 ??=
                                TextEditingController(
                              text: containerPapersRecord.month,
                            ),
                            onChanged: (_) => EasyDebounce.debounce(
                              'textController5',
                              Duration(milliseconds: 100),
                              () => setState(() {}),
                            ),
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'month',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Ubuntu',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
                          child: TextFormField(
                            controller: textController6 ??=
                                TextEditingController(
                              text: containerPapersRecord.paper?.toString(),
                            ),
                            onChanged: (_) => EasyDebounce.debounce(
                              'textController6',
                              Duration(milliseconds: 100),
                              () => setState(() {}),
                            ),
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'paper number',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Ubuntu',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: FlutterFlowTheme.of(context).primaryColor,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          final selectedFile =
                              await selectFile(allowedExtensions: ['pdf']);
                          if (selectedFile != null) {
                            showUploadMessage(
                              context,
                              'Uploading file...',
                              showLoading: true,
                            );
                            final downloadUrl = await uploadData(
                                selectedFile.storagePath, selectedFile.bytes);
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            if (downloadUrl != null) {
                              setState(() => uploadedFileUrl1 = downloadUrl);
                              showUploadMessage(
                                context,
                                'Success!',
                              );
                            } else {
                              showUploadMessage(
                                context,
                                'Failed to upload file',
                              );
                              return;
                            }
                          }
                        },
                        text: 'New Paper',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Ubuntu',
                                    color: Colors.white,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            final selectedFile =
                                await selectFile(allowedExtensions: ['pdf']);
                            if (selectedFile != null) {
                              showUploadMessage(
                                context,
                                'Uploading file...',
                                showLoading: true,
                              );
                              final downloadUrl = await uploadData(
                                  selectedFile.storagePath, selectedFile.bytes);
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              if (downloadUrl != null) {
                                setState(() => uploadedFileUrl2 = downloadUrl);
                                showUploadMessage(
                                  context,
                                  'Success!',
                                );
                              } else {
                                showUploadMessage(
                                  context,
                                  'Failed to upload file',
                                );
                                return;
                              }
                            }
                          },
                          text: 'New Memo',
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Ubuntu',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                  if ((textController1?.text ?? '') != null &&
                      (textController1?.text ?? '') != '')
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if ((textController2?.text ?? '') != null &&
                              (textController2?.text ?? '') != '')
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if ((textController3?.text ?? '') != null &&
                                    (textController3?.text ?? '') != '')
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if ((textController4?.text ?? '') !=
                                              null &&
                                          (textController4?.text ?? '') != '')
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if ((textController5?.text ?? '') !=
                                                    null &&
                                                (textController5?.text ?? '') !=
                                                    '')
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if ((textController6?.text ??
                                                              '') !=
                                                          null &&
                                                      (textController6?.text ??
                                                              '') !=
                                                          '')
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          if (uploadedFileUrl1 !=
                                                                  null &&
                                                              uploadedFileUrl1 !=
                                                                  '') {
                                                            if (uploadedFileUrl2 !=
                                                                    null &&
                                                                uploadedFileUrl2 !=
                                                                    '') {
                                                              final papersUpdateData =
                                                                  createPapersRecordData(
                                                                subject:
                                                                    textController1
                                                                            ?.text ??
                                                                        '',
                                                                grade: double.parse(
                                                                    textController2
                                                                            ?.text ??
                                                                        ''),
                                                                syllabus:
                                                                    textController3
                                                                            ?.text ??
                                                                        '',
                                                                year: int.parse(
                                                                    textController4
                                                                            ?.text ??
                                                                        ''),
                                                                month: textController5
                                                                        ?.text ??
                                                                    '',
                                                                paper: int.parse(
                                                                    textController6
                                                                            ?.text ??
                                                                        ''),
                                                                questionPaper:
                                                                    uploadedFileUrl1,
                                                                memo:
                                                                    uploadedFileUrl2,
                                                              );
                                                              await containerPapersRecord
                                                                  .reference
                                                                  .update(
                                                                      papersUpdateData);
                                                            } else {
                                                              final papersUpdateData =
                                                                  createPapersRecordData(
                                                                subject:
                                                                    textController1
                                                                            ?.text ??
                                                                        '',
                                                                grade: double.parse(
                                                                    textController2
                                                                            ?.text ??
                                                                        ''),
                                                                syllabus:
                                                                    textController3
                                                                            ?.text ??
                                                                        '',
                                                                year: int.parse(
                                                                    textController4
                                                                            ?.text ??
                                                                        ''),
                                                                month: textController5
                                                                        ?.text ??
                                                                    '',
                                                                paper: int.parse(
                                                                    textController6
                                                                            ?.text ??
                                                                        ''),
                                                                questionPaper:
                                                                    uploadedFileUrl1,
                                                              );
                                                              await containerPapersRecord
                                                                  .reference
                                                                  .update(
                                                                      papersUpdateData);
                                                            }
                                                          } else {
                                                            if (uploadedFileUrl2 !=
                                                                    null &&
                                                                uploadedFileUrl2 !=
                                                                    '') {
                                                              final papersUpdateData =
                                                                  createPapersRecordData(
                                                                subject:
                                                                    textController1
                                                                            ?.text ??
                                                                        '',
                                                                grade: double.parse(
                                                                    textController2
                                                                            ?.text ??
                                                                        ''),
                                                                syllabus:
                                                                    textController3
                                                                            ?.text ??
                                                                        '',
                                                                year: int.parse(
                                                                    textController4
                                                                            ?.text ??
                                                                        ''),
                                                                month: textController5
                                                                        ?.text ??
                                                                    '',
                                                                paper: int.parse(
                                                                    textController6
                                                                            ?.text ??
                                                                        ''),
                                                                memo:
                                                                    uploadedFileUrl2,
                                                              );
                                                              await containerPapersRecord
                                                                  .reference
                                                                  .update(
                                                                      papersUpdateData);
                                                            } else {
                                                              final papersUpdateData =
                                                                  createPapersRecordData(
                                                                subject:
                                                                    textController1
                                                                            ?.text ??
                                                                        '',
                                                                grade: double.parse(
                                                                    textController2
                                                                            ?.text ??
                                                                        ''),
                                                                syllabus:
                                                                    textController3
                                                                            ?.text ??
                                                                        '',
                                                                year: int.parse(
                                                                    textController4
                                                                            ?.text ??
                                                                        ''),
                                                                month: textController5
                                                                        ?.text ??
                                                                    '',
                                                                paper: int.parse(
                                                                    textController6
                                                                            ?.text ??
                                                                        ''),
                                                              );
                                                              await containerPapersRecord
                                                                  .reference
                                                                  .update(
                                                                      papersUpdateData);
                                                            }
                                                          }

                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        text: 'Update',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 230,
                                                          height: 50,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryColor,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .subtitle2
                                                                  .override(
                                                                    fontFamily:
                                                                        'Ubuntu',
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                          elevation: 2,
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                          ],
                                        ),
                                    ],
                                  ),
                              ],
                            ),
                        ],
                      ),
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
