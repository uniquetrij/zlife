import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_post_model.dart';
export 'create_post_model.dart';

class CreatePostWidget extends StatefulWidget {
  const CreatePostWidget({Key? key}) : super(key: key);

  @override
  _CreatePostWidgetState createState() => _CreatePostWidgetState();
}

class _CreatePostWidgetState extends State<CreatePostWidget> {
  late CreatePostModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreatePostModel());
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
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.chevron_left,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'hd1z5k1o' /* Select Category */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).accent4,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'yc8o7q6p' /* What would you like to dispose... */,
                    ),
                    style: FlutterFlowTheme.of(context).titleMedium,
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'gs44n4v6' /* Select one of the categories b... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                  Container(
                    width: 100.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                    ),
                  ),
                  GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 1.0,
                    ),
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: MediaQuery.of(context).size.height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * 1.0,
                          child: Stack(
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  setState(() {
                                    FFAppState().createPost = functions
                                        .postToJson(
                                            'null',
                                            'null',
                                            0,
                                            'null',
                                            0.0,
                                            'null',
                                            'Flowers & Plants',
                                            List.generate(
                                                random_data.randomInteger(0, 0),
                                                (index) =>
                                                    random_data.randomName(
                                                        true, false)).toList(),
                                            List.generate(
                                                random_data.randomInteger(0, 0),
                                                (index) =>
                                                    random_data.randomName(
                                                        true, false)).toList());
                                  });

                                  context.pushNamed('category_details');
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-combo-packs-plants-top-5-air-purifier-and-oxygen-enriching-plant-pack-16969387507852_512x512.jpg?v=1634230232',
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: MediaQuery.of(context).size.height *
                                        1.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x77101213),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'dw2l8wgz' /* Plants & Flowers */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: MediaQuery.of(context).size.height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * 1.0,
                          child: Stack(
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  setState(() {
                                    FFAppState().createPost = functions
                                        .postToJson(
                                            'null',
                                            'null',
                                            0,
                                            'null',
                                            0.0,
                                            'null',
                                            'Electronics & Harware',
                                            List.generate(
                                                random_data.randomInteger(0, 0),
                                                (index) =>
                                                    random_data.randomName(
                                                        true, false)).toList(),
                                            List.generate(
                                                random_data.randomInteger(0, 0),
                                                (index) =>
                                                    random_data.randomName(
                                                        true, false)).toList());
                                  });

                                  context.pushNamed('category_details');
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'https://images.herzindagi.info/image/2020/Apr/Electronics.jpg',
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: MediaQuery.of(context).size.height *
                                        1.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x77101213),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'bqifyla7' /* Electronics & Harware */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: MediaQuery.of(context).size.height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * 1.0,
                          child: Stack(
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  setState(() {
                                    FFAppState().createPost = functions
                                        .postToJson(
                                            'null',
                                            'null',
                                            0,
                                            'null',
                                            0.0,
                                            'null',
                                            'Paper & Books',
                                            List.generate(
                                                random_data.randomInteger(0, 0),
                                                (index) =>
                                                    random_data.randomName(
                                                        true, false)).toList(),
                                            List.generate(
                                                random_data.randomInteger(0, 0),
                                                (index) =>
                                                    random_data.randomName(
                                                        true, false)).toList());
                                  });

                                  context.pushNamed('category_details');
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'https://www.incimages.com/uploaded_files/image/1920x1080/getty_655998316_2000149920009280219_363765.jpg',
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: MediaQuery.of(context).size.height *
                                        1.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x77101213),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'd4tb96zh' /* Paper & Books */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: MediaQuery.of(context).size.height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * 1.0,
                          child: Stack(
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  setState(() {
                                    FFAppState().createPost = functions
                                        .postToJson(
                                            'null',
                                            'null',
                                            0,
                                            'null',
                                            0.0,
                                            'null',
                                            'Fabric & Clothes',
                                            List.generate(
                                                random_data.randomInteger(0, 0),
                                                (index) =>
                                                    random_data.randomName(
                                                        true, false)).toList(),
                                            List.generate(
                                                random_data.randomInteger(0, 0),
                                                (index) =>
                                                    random_data.randomName(
                                                        true, false)).toList());
                                  });

                                  context.pushNamed('category_details');
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/buy_clothes.png',
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: MediaQuery.of(context).size.height *
                                        1.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x77101213),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'bhee3dih' /* Fabric & Clothes */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: MediaQuery.of(context).size.height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * 1.0,
                          child: Stack(
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  setState(() {
                                    FFAppState().createPost = functions
                                        .postToJson(
                                            'null',
                                            'null',
                                            0,
                                            'null',
                                            0.0,
                                            'null',
                                            'Wood & Furnitures',
                                            List.generate(
                                                random_data.randomInteger(0, 0),
                                                (index) =>
                                                    random_data.randomName(
                                                        true, false)).toList(),
                                            List.generate(
                                                random_data.randomInteger(0, 0),
                                                (index) =>
                                                    random_data.randomName(
                                                        true, false)).toList());
                                  });

                                  context.pushNamed('category_details');
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'https://www.thehomeconsignmentcenter.com/wp-content/uploads/2021/11/san-carlos.jpg',
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: MediaQuery.of(context).size.height *
                                        1.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x77101213),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'exe2n585' /* Wood & Furnitures */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: MediaQuery.of(context).size.height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * 1.0,
                          child: Stack(
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  setState(() {
                                    FFAppState().createPost = functions
                                        .postToJson(
                                            'null',
                                            'null',
                                            0,
                                            'null',
                                            0.0,
                                            'null',
                                            'Plastic & Bottles',
                                            List.generate(
                                                random_data.randomInteger(0, 0),
                                                (index) =>
                                                    random_data.randomName(
                                                        true, false)).toList(),
                                            List.generate(
                                                random_data.randomInteger(0, 0),
                                                (index) =>
                                                    random_data.randomName(
                                                        true, false)).toList());
                                  });

                                  context.pushNamed('category_details');
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/buy_plastics.png',
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: MediaQuery.of(context).size.height *
                                        1.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x77101213),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '6s00tj70' /* Plastic & Bottles */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: MediaQuery.of(context).size.height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * 1.0,
                          child: Stack(
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  setState(() {
                                    FFAppState().createPost = functions
                                        .postToJson(
                                            'null',
                                            'null',
                                            0,
                                            'null',
                                            0.0,
                                            'null',
                                            'Machine & Machinery',
                                            List.generate(
                                                random_data.randomInteger(0, 0),
                                                (index) =>
                                                    random_data.randomName(
                                                        true, false)).toList(),
                                            List.generate(
                                                random_data.randomInteger(0, 0),
                                                (index) =>
                                                    random_data.randomName(
                                                        true, false)).toList());
                                  });

                                  context.pushNamed('category_details');
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'https://th.bing.com/th/id/R.4e0352840a5d00ee92f24cd1308c675a?rik=xNb7E5tlVs4d1A&riu=http%3a%2f%2fwww.vikingmergers.com%2fwp-content%2fuploads%2f2016%2f07%2fMetal-Parts.jpg&ehk=z2Bj9QOrYpkKILHihTYOMNG%2fioaLEFuI%2brT7dDq%2b34U%3d&risl=&pid=ImgRaw&r=0',
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: MediaQuery.of(context).size.height *
                                        1.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x77101213),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '0jmeiiiw' /* Machine & Machinery */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: MediaQuery.of(context).size.height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * 1.0,
                          child: Stack(
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  setState(() {
                                    FFAppState().createPost = functions
                                        .postToJson(
                                            'null',
                                            'null',
                                            0,
                                            'null',
                                            0.0,
                                            'null',
                                            'Mirror & Glasses',
                                            List.generate(
                                                random_data.randomInteger(0, 0),
                                                (index) =>
                                                    random_data.randomName(
                                                        true, false)).toList(),
                                            List.generate(
                                                random_data.randomInteger(0, 0),
                                                (index) =>
                                                    random_data.randomName(
                                                        true, false)).toList());
                                  });

                                  context.pushNamed('category_details');
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'https://i.pinimg.com/originals/ba/b1/2f/bab12fc845cba98eefc0fce6b73a1336.png',
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: MediaQuery.of(context).size.height *
                                        1.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x77101213),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '0rcqeqo4' /* Mirror & Glasses */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: MediaQuery.of(context).size.height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * 1.0,
                          child: Stack(
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  setState(() {
                                    FFAppState().createPost = functions
                                        .postToJson(
                                            'null',
                                            'null',
                                            0,
                                            'null',
                                            0.0,
                                            'null',
                                            'Biomedical',
                                            List.generate(
                                                random_data.randomInteger(0, 0),
                                                (index) =>
                                                    random_data.randomName(
                                                        true, false)).toList(),
                                            List.generate(
                                                random_data.randomInteger(0, 0),
                                                (index) =>
                                                    random_data.randomName(
                                                        true, false)).toList());
                                  });

                                  context.pushNamed('category_details');
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'https://vidhilegalpolicy.in/wp-content/uploads/2020/09/Biomedical-1.jpg',
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: MediaQuery.of(context).size.height *
                                        1.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x77101213),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'v49m2qvl' /* Biomedical */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: MediaQuery.of(context).size.height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * 1.0,
                          child: Stack(
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  setState(() {
                                    FFAppState().createPost = functions
                                        .postToJson(
                                            'null',
                                            'null',
                                            0,
                                            'null',
                                            0.0,
                                            'null',
                                            'Others',
                                            List.generate(
                                                random_data.randomInteger(0, 0),
                                                (index) =>
                                                    random_data.randomName(
                                                        true, false)).toList(),
                                            List.generate(
                                                random_data.randomInteger(0, 0),
                                                (index) =>
                                                    random_data.randomName(
                                                        true, false)).toList());
                                  });

                                  context.pushNamed('category_details');
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'https://images.squarespace-cdn.com/content/v1/573d3f4540261d8123b6b741/1513157054746-M6Y93U162U0S96N77VLP/What+To+Sell+On+Amazon+EU.jpg',
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: MediaQuery.of(context).size.height *
                                        1.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x77101213),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'fmdi7jss' /* Others */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
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
        ),
      ),
    );
  }
}
