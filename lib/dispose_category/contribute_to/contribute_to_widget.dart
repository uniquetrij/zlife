import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'contribute_to_model.dart';
export 'contribute_to_model.dart';

class ContributeToWidget extends StatefulWidget {
  const ContributeToWidget({Key? key}) : super(key: key);

  @override
  _ContributeToWidgetState createState() => _ContributeToWidgetState();
}

class _ContributeToWidgetState extends State<ContributeToWidget> {
  late ContributeToModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContributeToModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primary,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryBackground,
            size: 30.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            '8lrmcsxd' /* Contribute To */,
          ),
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).primaryBackground,
                fontSize: 22.0,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Align(
        alignment: AlignmentDirectional(0.0, -1.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '6wcuwn3c' /* Sell the item or donate them? */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, -0.05),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'lnb0fxqk' /* Please select one of the optio... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodySmall,
                  ),
                ),
              ),
              Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().createPost = functions.postToJson(
                              getJsonField(
                                FFAppState().createPost,
                                r'''$.title''',
                              ).toString(),
                              getJsonField(
                                FFAppState().createPost,
                                r'''$.description''',
                              ).toString(),
                              getJsonField(
                                FFAppState().createPost,
                                r'''$.weight''',
                              ),
                              getJsonField(
                                FFAppState().createPost,
                                r'''$.contributionType''',
                              ).toString(),
                              getJsonField(
                                FFAppState().createPost,
                                r'''$.productPrice''',
                              ),
                              'SELECTIVE',
                              getJsonField(
                                FFAppState().createPost,
                                r'''$.productCategory''',
                              ).toString(),
                              (getJsonField(
                                FFAppState().createPost,
                                r'''$.productImages''',
                              ) as List)
                                  .map<String>((s) => s.toString())
                                  .toList(),
                              List.generate(
                                      random_data.randomInteger(0, 0),
                                      (index) =>
                                          random_data.randomName(true, false))
                                  .toList());

                          context.pushNamed('search_organisation');
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.search,
                          ),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              '63ztshjl' /* Search an Organization */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          subtitle: Text(
                            FFLocalizations.of(context).getText(
                              'ivm6k26q' /* Select a registered Orgainzati... */,
                            ),
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                          trailing: Icon(
                            Icons.chevron_right_rounded,
                            color: FlutterFlowTheme.of(context).accent2,
                            size: 20.0,
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          dense: false,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().createPost = functions.postToJson(
                              getJsonField(
                                FFAppState().createPost,
                                r'''$.title''',
                              ).toString(),
                              getJsonField(
                                FFAppState().createPost,
                                r'''$.description''',
                              ).toString(),
                              getJsonField(
                                FFAppState().createPost,
                                r'''$.weight''',
                              ),
                              getJsonField(
                                FFAppState().createPost,
                                r'''$.contributionType''',
                              ).toString(),
                              getJsonField(
                                FFAppState().createPost,
                                r'''$.productPrice''',
                              ),
                              'ALL',
                              getJsonField(
                                FFAppState().createPost,
                                r'''$.productCategory''',
                              ).toString(),
                              (getJsonField(
                                FFAppState().createPost,
                                r'''$.productImages''',
                              ) as List)
                                  .map<String>((s) => s.toString())
                                  .toList(),
                              List.generate(
                                      random_data.randomInteger(0, 0),
                                      (index) =>
                                          random_data.randomName(true, false))
                                  .toList());

                          context.pushNamed('product_details');
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.post_add_sharp,
                          ),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'e1fvzv3b' /* Post to all */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          subtitle: Text(
                            FFLocalizations.of(context).getText(
                              '2x15b3op' /* Broadcast your listing */,
                            ),
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                          trailing: Icon(
                            Icons.chevron_right_rounded,
                            color: FlutterFlowTheme.of(context).accent2,
                            size: 20.0,
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          dense: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
