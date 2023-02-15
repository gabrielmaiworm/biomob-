import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class RegisterCopyWidget extends StatefulWidget {
  const RegisterCopyWidget({Key? key}) : super(key: key);

  @override
  _RegisterCopyWidgetState createState() => _RegisterCopyWidgetState();
}

class _RegisterCopyWidgetState extends State<RegisterCopyWidget> {
  TextEditingController? confirmaSenhaController;
  late bool confirmaSenhaVisibility;
  TextEditingController? emailController;
  TextEditingController? nomeController;
  TextEditingController? senhaController;
  late bool senhaVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confirmaSenhaController = TextEditingController();
    confirmaSenhaVisibility = false;
    emailController = TextEditingController();
    nomeController = TextEditingController();
    senhaController = TextEditingController();
    senhaVisibility = false;
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    confirmaSenhaController?.dispose();
    emailController?.dispose();
    nomeController?.dispose();
    senhaController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'RegisterCopy',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).fillBotaoMenu,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.25,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).fillBotaoMenu,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                if (Theme.of(context).brightness ==
                                    Brightness.light)
                                  Image.asset(
                                    'assets/images/Biomob-01.png',
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    fit: BoxFit.contain,
                                  ),
                                if (Theme.of(context).brightness ==
                                    Brightness.dark)
                                  Image.asset(
                                    'assets/images/Biomob-01_1.png',
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    fit: BoxFit.contain,
                                  ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (Theme.of(context).brightness ==
                                  Brightness.light)
                                Lottie.network(
                                  'https://lottie.host/0f0c799e-e7b9-420b-8f6a-d7c985756198/Q55bs9pmxC.json',
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
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.75,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).cor1,
                    ),
                    child: Form(
                      key: formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (Theme.of(context).brightness ==
                                  Brightness.dark)
                                Lottie.network(
                                  'https://lottie.host/14aad2bd-0e5d-4461-9612-4b999650f492/n3p9uQGJrI.json',
                                  width: MediaQuery.of(context).size.width,
                                  height: 45,
                                  fit: BoxFit.cover,
                                  animate: true,
                                ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 30, 0, 25),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 0),
                                    child: TextFormField(
                                      controller: nomeController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Nome completo',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xFF1D4F9A),
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFF00000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFF00000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        filled: true,
                                        fillColor:
                                            FlutterFlowTheme.of(context).cor2,
                                        prefixIcon: Icon(
                                          Icons.person,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFFFBFBFB),
                                            fontWeight: FontWeight.w600,
                                          ),
                                      keyboardType: TextInputType.name,
                                      validator: (val) {
                                        if (val == null || val.isEmpty) {
                                          return 'Campo obrigatório!';
                                        }

                                        return null;
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 0),
                                    child: TextFormField(
                                      controller: emailController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'E-mail',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xFF1D4F9A),
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFF00000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFF00000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        filled: true,
                                        fillColor:
                                            FlutterFlowTheme.of(context).cor2,
                                        prefixIcon: Icon(
                                          Icons.mail,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFFFBFBFB),
                                            fontWeight: FontWeight.w600,
                                          ),
                                      keyboardType: TextInputType.name,
                                      validator: (val) {
                                        if (val == null || val.isEmpty) {
                                          return 'Campo obrigatório!';
                                        }

                                        if (!RegExp(kTextValidatorEmailRegex)
                                            .hasMatch(val)) {
                                          return 'Email inválido';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 0),
                                    child: TextFormField(
                                      controller: senhaController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        'senhaController',
                                        Duration(milliseconds: 100),
                                        () => setState(() {}),
                                      ),
                                      obscureText: !senhaVisibility,
                                      decoration: InputDecoration(
                                        labelText: 'Senha',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xFF1D4F9A),
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFF00000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFF00000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        filled: true,
                                        fillColor:
                                            FlutterFlowTheme.of(context).cor2,
                                        prefixIcon: Icon(
                                          Icons.vpn_key,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => senhaVisibility =
                                                !senhaVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            senhaVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: Color(0xFF757575),
                                            size: 22,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFFFBFBFB),
                                            fontWeight: FontWeight.w600,
                                          ),
                                      keyboardType: TextInputType.name,
                                      validator: (val) {
                                        if (val == null || val.isEmpty) {
                                          return 'Campo obrigatório!';
                                        }

                                        if (val.length < 6) {
                                          return 'A senha deve ter no mínimo 6 caracteres.';
                                        }

                                        return null;
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 0),
                                    child: TextFormField(
                                      controller: confirmaSenhaController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        'confirmaSenhaController',
                                        Duration(milliseconds: 100),
                                        () => setState(() {}),
                                      ),
                                      obscureText: !confirmaSenhaVisibility,
                                      decoration: InputDecoration(
                                        labelText: 'Confirmar Senha',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xFF1D4F9A),
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFF00000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFF00000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        filled: true,
                                        fillColor:
                                            FlutterFlowTheme.of(context).cor2,
                                        prefixIcon: Icon(
                                          Icons.vpn_key,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => confirmaSenhaVisibility =
                                                !confirmaSenhaVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            confirmaSenhaVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: Color(0xFF757575),
                                            size: 22,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFFFBFBFB),
                                            fontWeight: FontWeight.w600,
                                          ),
                                      keyboardType: TextInputType.name,
                                      validator: (val) {
                                        if (val == null || val.isEmpty) {
                                          return 'Campo obrigatório!';
                                        }

                                        return null;
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (functions.validaSenha(senhaController!.text,
                              confirmaSenhaController!.text))
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(25, 0, 25, 25),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: Icon(
                                      Icons.check_circle,
                                      color: Color(0xFF4747CF),
                                      size: 20,
                                    ),
                                  ),
                                  SelectionArea(
                                      child: Text(
                                    'Senhas iguais',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          fontWeight: FontWeight.w500,
                                        ),
                                  )),
                                ],
                              ),
                            ),
                          if (functions.validaSenha(senhaController!.text,
                              confirmaSenhaController!.text))
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    if (formKey.currentState == null ||
                                        !formKey.currentState!.validate()) {
                                      return;
                                    }

                                    FFAppState().update(() {
                                      FFAppState().nome = nomeController!.text;
                                      FFAppState().email =
                                          emailController!.text;
                                    });
                                    FFAppState().update(() {
                                      FFAppState().senha =
                                          senhaController!.text;
                                    });

                                    context.pushNamed('InfoAdicionalCopy');
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.85,
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .fillBotaoMenu,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Avançar',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .iconeBotao,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          if (!functions.validaSenha(senhaController!.text,
                              confirmaSenhaController!.text))
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Senhas diferentes!',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor: Color(0xFFC65656),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.85,
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC6C6C6),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Avançar',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .iconeBotao,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 45, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 5, 0),
                                  child: Text(
                                    'Já possui uma conta? ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: FlutterFlowTheme.of(context)
                                              .textoBotao,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    context.pushNamed('Login');
                                  },
                                  child: Text(
                                    'Entrar',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .fillBotaoMenu,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 30, 20, 40),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    context.pop();
                                  },
                                  text: '',
                                  icon: Icon(
                                    Icons.chevron_left,
                                    color:
                                        FlutterFlowTheme.of(context).iconeBotao,
                                    size: 30,
                                  ),
                                  options: FFButtonOptions(
                                    width: 55,
                                    height: 40,
                                    color: FlutterFlowTheme.of(context)
                                        .fillBotaoMenu,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
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
          ),
        ));
  }
}
