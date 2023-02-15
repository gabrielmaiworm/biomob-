import '../components/redirecionar_widget.dart';
import '../components/tutorial_completo_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    Key? key,
    this.dadosUsuario,
  }) : super(key: key);

  final dynamic dadosUsuario;

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 250.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 250.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
  };
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'HomePage',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).cor5,
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              if (FFAppState().openMenu == '1') {
                FFAppState().update(() {
                  FFAppState().openMenu = '2';
                });
              } else {
                FFAppState().update(() {
                  FFAppState().openMenu = '1';
                });
              }
            },
            backgroundColor: Colors.white,
            elevation: 8,
            child: Icon(
              Icons.menu,
              color: Color(0xFF42BEA4),
              size: 30,
            ),
          ),
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).cor5,
            automaticallyImplyLeading: false,
            leading: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (Theme.of(context).brightness == Brightness.dark)
                  InkWell(
                    onTap: () async {
                      setDarkModeSetting(context, ThemeMode.light);
                    },
                    child: Icon(
                      Icons.lightbulb,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                if (Theme.of(context).brightness == Brightness.light)
                  InkWell(
                    onTap: () async {
                      setDarkModeSetting(context, ThemeMode.dark);
                    },
                    child: FaIcon(
                      FontAwesomeIcons.solidMoon,
                      color: Colors.white,
                      size: 26,
                    ),
                  ),
              ],
            ),
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Image.asset(
                'assets/images/Biomob-01_1.png',
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.1,
                fit: BoxFit.contain,
              ),
            ),
            actions: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
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
                                height: MediaQuery.of(context).size.height * 0.8,
                                child: TutorialCompletoWidget(),
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
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Bem-vindo(a)',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                FFAppState().nome,
                                'Visitante!',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    fontSize: 20,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.8,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/IMG_3226_1.png',
                              ).image,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 70, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 15),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.38,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.15,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .fillBotaoMenu,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: InkWell(
                                                onTap: () async {
                                                  context.pushNamed(
                                                      'LocaisAcessiveis');
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      'assets/images/wheelchair_accessibility_icon_137024_1.png',
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.2,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.08,
                                                      fit: BoxFit.contain,
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Locais',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .textoBotao,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        Text(
                                                          'Acessíveis',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .textoBotao,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.38,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.15,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .fillBotaoMenu,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: InkWell(
                                                onTap: () async {
                                                  context.pushNamed(
                                                      'Estacionamento');
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Image.asset(
                                                          'assets/images/car_vehicle_transport_icon_144665_1.png',
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.2,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.08,
                                                          fit: BoxFit.contain,
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                'Vagas de estacionamento',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .textoBotao,
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 15, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.38,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.15,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .fillBotaoMenu,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: InkWell(
                                                onTap: () async {
                                                  context.pushNamed(
                                                      'VagasEmprego');
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      'assets/images/work_black_24dp_1.png',
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.2,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.08,
                                                      fit: BoxFit.contain,
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Vagas de',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .textoBotao,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        Text(
                                                          'Emprego',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .textoBotao,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.38,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.15,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .fillBotaoMenu,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: InkWell(
                                                onTap: () async {
                                                  context.pushNamed('Eventos');
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      'assets/images/bi_calendar-event-fill.png',
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.15,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.08,
                                                      fit: BoxFit.contain,
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Eventos',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .textoBotao,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        Text(
                                                          'Acessíveis',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .textoBotao,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context).size.width * 0.38,
                                              height: MediaQuery.of(context).size.height * 0.15,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(context).fillBotaoMenu,
                                                borderRadius: BorderRadius.circular(8),
                                              ),
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
                                                          child: RedirecionarWidget(),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) => setState(() {}));
                                                },
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    FaIcon(
                                                      FontAwesomeIcons.theaterMasks,
                                                      color: FlutterFlowTheme.of(context).cor1,
                                                      size: 55,
                                                    ),
                                                    Column(
                                                      mainAxisSize: MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Vagas de',
                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                fontFamily: 'Lexend Deca',
                                                                color: FlutterFlowTheme.of(context).textoBotao,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w600,
                                                              ),
                                                        ),
                                                        Text(
                                                          'Ator',
                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                fontFamily: 'Lexend Deca',
                                                                color: FlutterFlowTheme.of(context).textoBotao,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w600,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () async {
                                                context.pushNamed('HomePage');
                                              },
                                              child: Container(
                                                width: MediaQuery.of(context).size.width * 0.38,
                                                height: MediaQuery.of(context).size.height * 0.15,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(context).fillBotaoMenu,
                                                  borderRadius: BorderRadius.circular(8),
                                                ),
                                                child: InkWell(
                                                  onTap: () async {
                                                    await showDialog(
                                                      context: context,
                                                      builder: (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text('Alerta'),
                                                          content: Text('Funcionalidade em desenvolvimento!'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                  },
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Image.asset(
                                                        'assets/images/iconfinder-volume-max-sound-speaker-audio-4593170_122277_1.png',
                                                        width: MediaQuery.of(context).size.width * 0.2,
                                                        height: MediaQuery.of(context).size.height * 0.08,
                                                        fit: BoxFit.contain,
                                                      ),
                                                      Text(
                                                        'Áudio Guia',
                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                              fontFamily: 'Lexend Deca',
                                                              color: FlutterFlowTheme.of(context).textoBotao,
                                                              fontSize: 15,
                                                              fontWeight: FontWeight.w600,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
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
                            ],
                          ),
                        ),
                        if (FFAppState().openMenu == '2')
                          InkWell(
                            onTap: () async {
                              FFAppState().update(() {
                                FFAppState().openMenu = '1';
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 2,
                              decoration: BoxDecoration(
                                color: Color(0x7E000000),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation1']!),
                        if (FFAppState().openMenu == '2')
                          Align(
                            alignment: AlignmentDirectional(0.8, 0.8),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 5, 5, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            SelectionArea(
                                                child: Text(
                                              'Início',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFF32A089),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            )),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 5, 5, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              context.pushNamed(
                                                'MeuPerfil',
                                                queryParams: {
                                                  'dadosUser': serializeParam(
                                                    widget.dadosUsuario,
                                                    ParamType.JSON,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                SelectionArea(
                                                    child: Text(
                                                  'Perfil',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xD9000000),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                )),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 5, 5, 10),
                                          child: InkWell(
                                            onTap: () async {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Você foi desconectado.',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      Color(0xFFCF6969),
                                                ),
                                              );

                                              context.pushNamed('Entrada');
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                SelectionArea(
                                                    child: Text(
                                                  'Sair',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xD9000000),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                )),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation2']!),
                            ),
                          ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              children: [
                                if (Theme.of(context).brightness ==
                                    Brightness.light)
                                  Lottie.network(
                                    'https://lottie.host/c92c8431-5c77-49a7-81a9-ac7aa9291797/9DsVyaJTHl.json',
                                    width: MediaQuery.of(context).size.width,
                                    height: 45,
                                    fit: BoxFit.cover,
                                    frameRate: FrameRate(60),
                                    animate: true,
                                  ),
                                if (Theme.of(context).brightness ==
                                    Brightness.dark)
                                  Lottie.network(
                                    'https://lottie.host/14aad2bd-0e5d-4461-9612-4b999650f492/n3p9uQGJrI.json',
                                    width: MediaQuery.of(context).size.width,
                                    height: 45,
                                    fit: BoxFit.cover,
                                    frameRate: FrameRate(60),
                                    animate: true,
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
        ));
  }
}
