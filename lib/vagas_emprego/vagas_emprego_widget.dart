import '../backend/api_requests/api_calls.dart';
import '../components/bottom_emprego_widget.dart';
import '../components/tutorial_emprego_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class VagasEmpregoWidget extends StatefulWidget {
  const VagasEmpregoWidget({Key? key}) : super(key: key);

  @override
  _VagasEmpregoWidgetState createState() => _VagasEmpregoWidgetState();
}

class _VagasEmpregoWidgetState extends State<VagasEmpregoWidget> {
  Completer<ApiCallResponse>? _apiRequestCompleter;
  TextEditingController? textController;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
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

    return Title(
        title: 'VagasEmprego',
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
                context.pop();
              },
            ),
            title: Text(
              'Vagas de emprego',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Lexend Deca',
                    color: Colors.white,
                    fontSize: 22,
                  ),
            ),
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                child: InkWell(
                  onTap: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.7,
                            child: TutorialEmpregoWidget(),
                          ),
                        );
                      },
                    ).then((value) => setState(() {}));
                  },
                  child: Icon(
                    Icons.help_outline,
                    color: Colors.white,
                    size: 30,
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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            if (Theme.of(context).brightness ==
                                Brightness.light)
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
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 5, 5, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
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
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
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
                                            Duration(milliseconds: 100),
                                            () => setState(() {}),
                                          ),
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Procure algo aqui...',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2,
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
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
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            prefixIcon: Icon(
                                              Icons.search,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiaryColor,
                                              size: 20,
                                            ),
                                            suffixIcon: textController!
                                                    .text.isNotEmpty
                                                ? InkWell(
                                                    onTap: () async {
                                                      textController?.clear();
                                                      setState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.clear,
                                                      color: Color(0xFF757575),
                                                      size: 22,
                                                    ),
                                                  )
                                                : null,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xD6000000),
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
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: FutureBuilder<ApiCallResponse>(
                      future:
                          (_apiRequestCompleter ??= Completer<ApiCallResponse>()
                                ..complete(GetEmpregoCall.call()))
                              .future,
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: SpinKitFadingCube(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 50,
                              ),
                            ),
                          );
                        }
                        final listViewGetEmpregoResponse = snapshot.data!;
                        return Builder(
                          builder: (context) {
                            final result = getJsonField(
                              listViewGetEmpregoResponse.jsonBody,
                              r'''$''',
                            ).toList();
                            return RefreshIndicator(
                              onRefresh: () async {
                                setState(() => _apiRequestCompleter = null);
                                await waitForApiRequestCompleter();
                              },
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: result.length,
                                itemBuilder: (context, resultIndex) {
                                  final resultItem = result[resultIndex];
                                  return Visibility(
                                    visible: functions.searchBar(
                                            textController!.text,
                                            getJsonField(
                                              resultItem,
                                              r'''$..cargo''',
                                            ).toString()) ??
                                        true,
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 5, 10),
                                      child: InkWell(
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.white,
                                            context: context,
                                            builder: (context) {
                                              return Padding(
                                                padding: MediaQuery.of(context)
                                                    .viewInsets,
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.55,
                                                  child: BottomEmpregoWidget(
                                                    estabelecimentoPlace:
                                                        resultItem,
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then((value) => setState(() {}));
                                        },
                                        child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Colors.white,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 10, 10, 10),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 10, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    10, 0),
                                                        child: ClipRRect(
                                                          borderRadius: BorderRadius.circular(5),
                                                          child: Image.network(
                                                            valueOrDefault<String>(
                                                              getJsonField(
                                                                resultItem,
                                                                r'''$..logo''',
                                                              ),
                                                              'data:image/jpeg;base64,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',
                                                            ),
                                                            width: 55,
                                                            height: 55,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            getJsonField(
                                                              resultItem,
                                                              r'''$..cargo''',
                                                            )
                                                                .toString()
                                                                .maybeHandleOverflow(
                                                                  maxChars: 30,
                                                                  replacement:
                                                                      '…',
                                                                ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .iconeBotao,
                                                                  fontSize: 18,
                                                                ),
                                                          ),
                                                          Text(
                                                            getJsonField(
                                                              resultItem,
                                                              r'''$..empresa''',
                                                            )
                                                                .toString()
                                                                .maybeHandleOverflow(
                                                                  maxChars: 30,
                                                                  replacement:
                                                                      '…',
                                                                ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .cinzaBranco,
                                                                  fontSize: 14,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(      
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            5,
                                                                            0),
                                                                child: Icon(
                                                                  Icons
                                                                      .location_pin,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .grayBG,
                                                                  size: 24,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Text(
                                                                  '${getJsonField(
                                                                    resultItem,
                                                                    r'''$..local''',
                                                                  ).toString()}  (${getJsonField(
                                                                    resultItem,
                                                                    r'''$..tipo''',
                                                                  ).toString()})',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .cinzaBranco,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                      
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        5,
                                                                        0),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .moneyBillAlt,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .iconeBotao,
                                                              size: 24,
                                                            ),
                                                          ),
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              getJsonField(
                                                                resultItem,
                                                                r'''$..salario''',
                                                              ).toString(),
                                                              'A combinar',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .cinzaBranco,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'Detalhar as informações da vaga...',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .cinzaBranco,
                                                                  fontSize: 14,
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
                                },
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
          ),
        ));
  }

  Future waitForApiRequestCompleter({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = _apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
