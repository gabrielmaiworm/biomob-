import '../backend/api_requests/api_calls.dart';
import '../components/filtro_local_widget.dart';
import '../components/tutorial_locais_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class LocaisAcessiveisWidget extends StatefulWidget {
  const LocaisAcessiveisWidget({Key? key}) : super(key: key);

  @override
  _LocaisAcessiveisWidgetState createState() => _LocaisAcessiveisWidgetState();
}

class _LocaisAcessiveisWidgetState extends State<LocaisAcessiveisWidget> {
  LatLng? currentUserLocationValue;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  PagingController<ApiPagingParams, dynamic>? _pagingController;
  TextEditingController? textController;

  @override
  void initState() {
    super.initState();
    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
    textController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 50,
            height: 50,
            child: SpinKitFadingCube(
              color: FlutterFlowTheme.of(context).primaryColor,
              size: 50,
            ),
          ),
        ),
      );
    }

    return Title(
        title: 'LocaisAcessiveis',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).cor4,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).cor5,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () async {
                context.pushNamed('HomePage');
              },
            ),
            title: Text(
              'Locais acessíveis',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Lexend Deca',
                    color: Colors.white,
                    fontSize: 22,
                  ),
            ),
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                child: InkWell(
                  onTap: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.7,
                            child: TutorialLocaisWidget(),
                          ),
                        );
                      },
                    ).then((value) => setState(() {}));
                  },
                  child: Icon(
                    Icons.info_outlined,
                    color: Color(0xFFF9F9F9),
                    size: 35,
                  ),
                ),
              ),
            ],
            centerTitle: true,
            elevation: 0,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    children: [
                      if (Theme.of(context).brightness == Brightness.light)
                        Lottie.network(
                          'https://lottie.host/c92c8431-5c77-49a7-81a9-ac7aa9291797/9DsVyaJTHl.json',
                          width: MediaQuery.of(context).size.width,
                          height: 45,
                          fit: BoxFit.cover,
                          animate: true,
                        ),
                      if (Theme.of(context).brightness == Brightness.dark)
                        Lottie.network(
                          'https://lottie.host/14aad2bd-0e5d-4461-9612-4b999650f492/n3p9uQGJrI.json',
                          width: MediaQuery.of(context).size.width,
                          height: 45,
                          fit: BoxFit.cover,
                          animate: true,
                        ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 5, 5, 0),
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 3,
                                        color: Color(0x39000000),
                                        offset: Offset(0, 1),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Color(0xFF2EBD9B),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 4),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              controller: textController,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                'textController',
                                                Duration(milliseconds: 200),
                                                () => setState(() {}),
                                              ),
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText:
                                                    'Procure por um lugar',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2,
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                                errorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                                focusedErrorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(10, 0, 0, 0),
                                                prefixIcon: Icon(
                                                  Icons.search,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiaryColor,
                                                  size: 16,
                                                ),
                                                suffixIcon: textController!
                                                        .text.isNotEmpty
                                                    ? InkWell(
                                                        onTap: () async {
                                                          textController
                                                              ?.clear();
                                                          setState(() {});
                                                        },
                                                        child: Icon(
                                                          Icons.clear,
                                                          color:
                                                              Color(0xFF757575),
                                                          size: 22,
                                                        ),
                                                      )
                                                    : null,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Color(0xFFA39F9F),
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 10, 0),
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 3,
                                        color: Color(0x39000000),
                                        offset: Offset(0, 1),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Color(0xFF2EBD9B),
                                    ),
                                  ),
                                  child: InkWell(
                                    onTap: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.of(context)
                                                .viewInsets,
                                            child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.9,
                                              child: FiltroLocalWidget(),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.tune_rounded,
                                          color: Color(0xFF2EBD9B),
                                          size: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                children: [
                                  if (FFAppState().choiceType != 'hospedagem')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          FFAppState().update(() {
                                            FFAppState().categoria = 'lodging';
                                            FFAppState().choiceType =
                                                'hospedagem';
                                          });

                                          context.pushNamed('LocaisAcessiveis');
                                        },
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 1,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.4,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.05,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFE6E6E6),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 5, 5, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  FaIcon(
                                                    FontAwesomeIcons.bed,
                                                    color: Color(0xFF8F8E8E),
                                                    size: 24,
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      'Hospedagem',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: Color(
                                                                    0xFF8F8E8E),
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  if (FFAppState().choiceType == 'hospedagem')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 1,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.05,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .cor5,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 5, 5, 5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons.bed,
                                                  color: Colors.white,
                                                  size: 24,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'Hospedagem',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: Colors.white,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                              Stack(
                                children: [
                                  if (FFAppState().choiceType != 'restaurant')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          FFAppState().update(() {
                                            FFAppState().categoria =
                                                'restaurant';
                                            FFAppState().choiceType =
                                                'restaurant';
                                          });

                                          context.pushNamed('LocaisAcessiveis');
                                        },
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 1,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.4,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.05,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFE6E6E6),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 5, 5, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Icon(
                                                    Icons.restaurant,
                                                    color: Color(0xFF8F8E8E),
                                                    size: 24,
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      'Comer e Beber',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: Color(
                                                                    0xFF8F8E8E),
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  if (FFAppState().choiceType == 'restaurant')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 1,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.05,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .cor5,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 5, 5, 5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Icon(
                                                  Icons.restaurant,
                                                  color: Colors.white,
                                                  size: 24,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'Comer e Beber',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: Colors.white,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                              Stack(
                                children: [
                                  if (FFAppState().choiceType != 'saude')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          FFAppState().update(() {
                                            FFAppState().categoria =
                                                'health, pharmacy';
                                            FFAppState().choiceType = 'saude';
                                          });

                                          context.pushNamed('LocaisAcessiveis');
                                        },
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 1,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.48,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.05,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFE6E6E6),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 5, 5, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  FaIcon(
                                                    FontAwesomeIcons
                                                        .briefcaseMedical,
                                                    color: Color(0xFF8F8E8E),
                                                    size: 24,
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      'Saúde e Bem-estar',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: Color(
                                                                    0xFF8F8E8E),
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  if (FFAppState().choiceType == 'saude')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 1,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.48,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.05,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .cor5,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 5, 5, 5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons
                                                      .briefcaseMedical,
                                                  color: Colors.white,
                                                  size: 24,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'Saúde e Bem-estar',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: Colors.white,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                              Stack(
                                children: [
                                  if (FFAppState().choiceType != 'service')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          FFAppState().update(() {
                                            FFAppState().categoria = 'service';
                                            FFAppState().choiceType = 'service';
                                          });

                                          context.pushNamed('LocaisAcessiveis');
                                        },
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 1,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.48,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.05,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFE6E6E6),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 5, 5, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  FaIcon(
                                                    FontAwesomeIcons.wrench,
                                                    color: Color(0xFF8F8E8E),
                                                    size: 24,
                                                  ),
                                                  Text(
                                                    'Serviços',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color:
                                                              Color(0xFF8F8E8E),
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  if (FFAppState().choiceType == 'service')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 1,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.48,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.05,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .cor5,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 5, 5, 5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons.wrench,
                                                  color: Colors.white,
                                                  size: 24,
                                                ),
                                                Text(
                                                  'Serviços',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color: Colors.white,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                              Stack(
                                children: [
                                  if (FFAppState().choiceType != 'shop')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          FFAppState().update(() {
                                            FFAppState().categoria = 'shop';
                                            FFAppState().choiceType = 'shop';
                                          });

                                          context.pushNamed('LocaisAcessiveis');
                                        },
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 1,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.48,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.05,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFE6E6E6),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 5, 5, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  FaIcon(
                                                    FontAwesomeIcons.tshirt,
                                                    color: Color(0xFF8F8E8E),
                                                    size: 24,
                                                  ),
                                                  Text(
                                                    'Varejo',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color:
                                                              Color(0xFF8F8E8E),
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  if (FFAppState().choiceType == 'shop')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 1,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.48,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.05,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .cor5,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 5, 5, 5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons.tshirt,
                                                  color: Colors.white,
                                                  size: 24,
                                                ),
                                                Text(
                                                  'Varejo',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color: Colors.white,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                              Stack(
                                children: [
                                  if (FFAppState().choiceType != 'event')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          FFAppState().update(() {
                                            FFAppState().categoria = 'event';
                                            FFAppState().choiceType = 'event';
                                          });

                                          context.pushNamed('LocaisAcessiveis');
                                        },
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 1,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.48,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.05,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFE6E6E6),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 5, 5, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Icon(
                                                    Icons.festival,
                                                    color: Color(0xFF8F8E8E),
                                                    size: 24,
                                                  ),
                                                  Text(
                                                    'Eventos',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color:
                                                              Color(0xFF8F8E8E),
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  if (FFAppState().choiceType == 'event')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 1,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.48,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.05,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .cor5,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 5, 5, 5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(
                                                  Icons.festival,
                                                  color: Colors.white,
                                                  size: 24,
                                                ),
                                                Text(
                                                  'Eventos',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color: Colors.white,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                              Stack(
                                children: [
                                  if (FFAppState().choiceType != 'transport')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          FFAppState().update(() {
                                            FFAppState().categoria =
                                                'transport';
                                            FFAppState().choiceType =
                                                'transport';
                                          });

                                          context.pushNamed('LocaisAcessiveis');
                                        },
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 1,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.48,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.05,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFE6E6E6),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 5, 5, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  FaIcon(
                                                    FontAwesomeIcons.bus,
                                                    color: Color(0xFF8F8E8E),
                                                    size: 24,
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      'Transporte Público',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: Color(
                                                                    0xFF8F8E8E),
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  if (FFAppState().choiceType == 'transport')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 1,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.48,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.05,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .cor5,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 5, 5, 5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons.bus,
                                                  color: Colors.white,
                                                  size: 24,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'Transporte Público',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: Colors.white,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Perto de mim',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color:
                                        FlutterFlowTheme.of(context).iconeBotao,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      child: PagedListView<ApiPagingParams, dynamic>(
                        pagingController: () {
                          if (_pagingController != null) {
                            return _pagingController!;
                          }

                          _pagingController = PagingController(
                            firstPageKey: ApiPagingParams(
                              nextPageNumber: 0,
                              numItems: 0,
                              lastResponse: null,
                            ),
                          );
                          _pagingController!
                              .addPageRequestListener((nextPageMarker) {
                            GetLocaisApiCall.call(
                              categoria: FFAppState().categoria,
                              range: FFAppState().distancia,
                              token: getJsonField(
                                        (nextPageMarker.lastResponse ??
                                                ApiCallResponse({}, {}, 200))
                                            .jsonBody,
                                        r'''$..token''',
                                      ) !=
                                      null
                                  ? getJsonField(
                                      (nextPageMarker.lastResponse ??
                                              ApiCallResponse({}, {}, 200))
                                          .jsonBody,
                                      r'''$..nextPageToken''',
                                    ).toString()
                                  : '?',
                              posicao: functions.stringGETusersLocation(
                                  currentUserLocationValue),
                            ).then((listViewGetLocaisApiResponse) {
                              final pageItems = getJsonField(
                                listViewGetLocaisApiResponse.jsonBody,
                                r'''$.places[*]''',
                              ).toList() as List;
                              final newNumItems =
                                  nextPageMarker.numItems + pageItems.length;
                              _pagingController!.appendPage(
                                pageItems,
                                (pageItems.length > 0)
                                    ? ApiPagingParams(
                                        nextPageNumber:
                                            nextPageMarker.nextPageNumber + 1,
                                        numItems: newNumItems,
                                        lastResponse:
                                            listViewGetLocaisApiResponse,
                                      )
                                    : null,
                              );
                            });
                          });
                          return _pagingController!;
                        }(),
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        builderDelegate: PagedChildBuilderDelegate<dynamic>(
                          // Customize what your widget looks like when it's loading the first page.
                          firstPageProgressIndicatorBuilder: (_) => Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: SpinKitFadingCube(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 50,
                              ),
                            ),
                          ),

                          itemBuilder:
                              (context, _, listaEstabelecimentosIndex) {
                            final listaEstabelecimentosItem = _pagingController!
                                .itemList![listaEstabelecimentosIndex];
                            var teste = getJsonField(
                              listaEstabelecimentosItem,
                              r'''$..biomobStarAverage''',
                            );

                            if (teste == null) {
                              teste = 0;
                            }
                            return Visibility(
                              visible: (teste <= FFAppState().avaliacaoNota) &&
                                  functions.searchBar(
                                      textController!.text,
                                      getJsonField(
                                        listaEstabelecimentosItem,
                                        r'''$..name''',
                                      ).toString())!,
                              child: InkWell(
                                onTap: () async {
                                  context.pushNamed(
                                    'Estabelecimento',
                                    queryParams: {
                                      'detalhes': serializeParam(
                                        getJsonField(
                                          listaEstabelecimentosItem,
                                          r'''$''',
                                        ),
                                        ParamType.JSON,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 5, 5, 5),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Stack(
                                                children: [
                                                  if (getJsonField(
                                                        listaEstabelecimentosItem,
                                                        r'''$..photo_reference''',
                                                      ) !=
                                                      null)
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      child: Image.network(
                                                        'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photo_reference=${getJsonField(
                                                          listaEstabelecimentosItem,
                                                          r'''$..photo_reference''',
                                                        ).toString()}&key=AIzaSyB5bgwqEelomy8qhYXb95UAXOiRE6BZ3ZU',
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.2,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  if (getJsonField(
                                                        listaEstabelecimentosItem,
                                                        r'''$..photo_reference''',
                                                      ) ==
                                                      null)
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      child: Image.network(
                                                        'https://pix10.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768',
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.2,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 5, 5, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  getJsonField(
                                                    listaEstabelecimentosItem,
                                                    r'''$..name''',
                                                  )
                                                      .toString()
                                                      .maybeHandleOverflow(
                                                        maxChars: 30,
                                                        replacement: '…',
                                                      ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 5, 10, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  getJsonField(
                                                    listaEstabelecimentosItem,
                                                    r'''$..formatted_address''',
                                                  )
                                                      .toString()
                                                      .maybeHandleOverflow(
                                                        maxChars: 40,
                                                        replacement: '…',
                                                      ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .cor1,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Icon(
                                                Icons.location_pin,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .cor1,
                                                size: 28,
                                              ),
                                            ],
                                          ),
                                        ),
                                        if (getJsonField(
                                              listaEstabelecimentosItem,
                                              r'''$..biomobStarAverage''',
                                            ) !=
                                            null)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 5, 10, 5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 5, 0),
                                                  child: Text(
                                                    getJsonField(
                                                      listaEstabelecimentosItem,
                                                      r'''$..biomobStarAverage''',
                                                    ).toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: Colors.black,
                                                          fontSize: 23,
                                                        ),
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.star_sharp,
                                                  color: Color(0xFFCFAD03),
                                                  size: 32,
                                                ),
                                              ],
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                            //Até aqui
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
