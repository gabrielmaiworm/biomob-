import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_model.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

import 'estabelecimento_model.dart';
export 'estabelecimento_model.dart';

class EstabelecimentoWidget extends StatefulWidget {
  const EstabelecimentoWidget({
    Key? key,
    this.detalhes,
  }) : super(key: key);

  final dynamic detalhes;

  @override
  _EstabelecimentoWidgetState createState() => _EstabelecimentoWidgetState();
}

class _EstabelecimentoWidgetState extends State<EstabelecimentoWidget> {
  late EstabelecimentoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EstabelecimentoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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

var biomobEntradaAverage = getJsonField(
      widget.detalhes,
      r'''$..biomobEntradaAverage''',
      );

      if (biomobEntradaAverage == null) {
      biomobEntradaAverage = 0;
      }

      var biomobBanheiroAverage = getJsonField(
      widget.detalhes,
      r'''$..biomobBanheiroAverage''',
      );

      if (biomobBanheiroAverage == null) {
      biomobBanheiroAverage = 0;
      }

      var biomobEstacionamentoAverage = getJsonField(
      widget.detalhes,
      r'''$..biomobEstacionamentoAverage''',
      );

      if (biomobEstacionamentoAverage == null) {
      biomobEstacionamentoAverage = 0;
      }

      var biomobCirculacaoAverage = getJsonField(
      widget.detalhes,
      r'''$..biomobCirculacaoAverage''',
      );

      if (biomobCirculacaoAverage == null) {
      biomobCirculacaoAverage = 0;
      }

      var biomobCalcadaAverage = getJsonField(
      widget.detalhes,
      r'''$..biomobCalcadaAverage''',
      );

      if (biomobCalcadaAverage == null) {
      biomobCalcadaAverage = 0;
      }

      var biomobAudioVisualAverage = getJsonField(
      widget.detalhes,
      r'''$..biomobAudioVisualAverage''',
      );

      if (biomobAudioVisualAverage == null) {
      biomobAudioVisualAverage = 0;
      }

    return Title(
        title: 'Estabelecimento',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).cor1,
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
              'Locais acess??veis',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Lexend Deca',
                    color: Colors.white,
                    fontSize: 22,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 0,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  if (getJsonField(
                                        widget.detalhes,
                                        r'''$..photo_reference''',
                                      ) !=
                                      null)
                                    InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            child: FlutterFlowExpandedImageView(
                                              image: Image.network(
                                                'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photo_reference=${getJsonField(
                                                  widget.detalhes,
                                                  r'''$..photo_reference''',
                                                ).toString()}&key=AIzaSyB5bgwqEelomy8qhYXb95UAXOiRE6BZ3ZU',
                                                fit: BoxFit.contain,
                                              ),
                                              allowRotation: false,
                                              tag:
                                                  'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photo_reference=${getJsonField(
                                                widget.detalhes,
                                                r'''$..photo_reference''',
                                              ).toString()}&key=AIzaSyB5bgwqEelomy8qhYXb95UAXOiRE6BZ3ZU',
                                              useHeroAnimation: true,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Hero(
                                        tag:
                                            'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photo_reference=${getJsonField(
                                          widget.detalhes,
                                          r'''$..photo_reference''',
                                        ).toString()}&key=AIzaSyB5bgwqEelomy8qhYXb95UAXOiRE6BZ3ZU',
                                        transitionOnUserGestures: true,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                          child: Image.network(
                                            'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photo_reference=${getJsonField(
                                              widget.detalhes,
                                              r'''$..photo_reference''',
                                            ).toString()}&key=AIzaSyB5bgwqEelomy8qhYXb95UAXOiRE6BZ3ZU',
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.3,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  if (getJsonField(
                                        widget.detalhes,
                                        r'''$..photo_reference''',
                                      ) ==
                                      null)
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(0),
                                      child: Image.network(
                                        'https://i0.wp.com/blogdiretodoforno.com.br/wp-content/uploads/2020/06/como-atrair-clientes-para-seu-restaurante.jpg?fit=784%2C523&ssl=1',
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.3,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  if (Theme.of(context).brightness ==
                                      Brightness.light)
                                    Align(
                                      alignment: AlignmentDirectional(0, 2.42),
                                      child: Lottie.network(
                                        'https://lottie.host/c92c8431-5c77-49a7-81a9-ac7aa9291797/9DsVyaJTHl.json',
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 45,
                                        fit: BoxFit.cover,
                                        animate: true,
                                      ),
                                    ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 45, 15, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 45,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            color: Color(0xB0FFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Builder(
                                                builder: (context) => InkWell(
                                                  onTap: () async {
                                                    _model.currentPageLink =
                                                        await generateCurrentPageLink(
                                                      context,
                                                      title: 'Biomob+',
                                                      imageUrl:
                                                          'https://biomob.org/wp-content/themes/Biomob/assets/images/logo_biomob_cinza_2.png',
                                                    );

                                                    await Share.share(
                                                      'Olha que lugar incr??vel que encontrei no aplicativo da Biomob!!   ${_model.currentPageLink}',
                                                      sharePositionOrigin:
                                                          getWidgetBoundingBox(
                                                              context),
                                                    );
                                                  },
                                                  child: Icon(
                                                    Icons.share_outlined,
                                                    color: Color(0xFF32A089),
                                                    size: 30,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (Theme.of(context).brightness ==
                                      Brightness.dark)
                                    Lottie.network(
                                      'https://lottie.host/e43ae15f-7ec0-4f13-95ec-1a9ef9144ae0/QaANQ45Hml.json',
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
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 10, 10, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Text(
                                  getJsonField(
                                    widget.detalhes,
                                    r'''$..name''',
                                  ).toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xE5000000),
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              RatingBarIndicator(
                                itemBuilder: (context, index) => Icon(
                                  Icons.star_rounded,
                                  color: Color(0xFFFDBA23),
                                ),
                                direction: Axis.horizontal,
                                rating: valueOrDefault<double>(
                                  getJsonField(
                                    widget.detalhes,
                                    r'''$..biomobStarAverage''',
                                  ),
                                  0.0,
                                ),
                                unratedColor: Color(0xFF9E9E9E),
                                itemCount: 5,
                                itemSize: 23,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Color(0xFF2EBD9B),
                                size: 24,
                              ),
                              Expanded(
                                child: Text(
                                  getJsonField(
                                    widget.detalhes,
                                    r'''$..formatted_address''',
                                  ).toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xAF000000),
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed(
                                    'Avaliacao',
                                    queryParams: {
                                      'informacoes': serializeParam(
                                        widget.detalhes,
                                        ParamType.JSON,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                text: 'Avaliar',
                                icon: Icon(
                                  Icons.star_rate,
                                  size: 18,
                                ),
                                options: FFButtonOptions(
                                  width: 110,
                                  height: 35,
                                  color: FlutterFlowTheme.of(context).cor1,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Builder(builder: (context) {
                                  final _googleMapMarker =
                                      functions.transformLatLng(
                                          getJsonField(
                                            widget.detalhes,
                                            r'''$..location.lat''',
                                          ).toString(),
                                          getJsonField(
                                            widget.detalhes,
                                            r'''$..location.lng''',
                                          ).toString());
                                  return FlutterFlowGoogleMap(
                                    controller: _model.googleMapsController,
                                    onCameraIdle: (latLng) =>
                                        _model.googleMapsCenter = latLng,
                                    initialLocation: _model.googleMapsCenter ??=
                                        functions.transformLatLng(
                                            getJsonField(
                                              widget.detalhes,
                                              r'''$..location.lat''',
                                            ).toString(),
                                            getJsonField(
                                              widget.detalhes,
                                              r'''$..location.lng''',
                                            ).toString())!,
                                    markers: [
                                      if (_googleMapMarker != null)
                                        FlutterFlowMarker(
                                          _googleMapMarker.serialize(),
                                          _googleMapMarker,
                                        ),
                                    ],
                                    markerColor: GoogleMarkerColor.violet,
                                    mapType: MapType.normal,
                                    style: GoogleMapStyle.standard,
                                    initialZoom: 14,
                                    allowInteraction: true,
                                    allowZoom: true,
                                    showZoomControls: true,
                                    showLocation: true,
                                    showCompass: false,
                                    showMapToolbar: false,
                                    showTraffic: false,
                                    centerMapOnMarkerTap: true,
                                  );
                                }),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: GetDetalhesLocalCall.call(
                              place: getJsonField(
                                widget.detalhes,
                                r'''$..place_id''',
                              ).toString(),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: SpinKitFadingCube(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 50,
                                    ),
                                  ),
                                );
                              }
                              final rowGetDetalhesLocalResponse =
                                  snapshot.data!;
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).cor1,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 12,
                                          color: Color(0x33000000),
                                          offset: Offset(0, 1),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: InkWell(
                                      onTap: () async {
                                        await launchURL(getJsonField(
                                          rowGetDetalhesLocalResponse.jsonBody,
                                          r'''$..url''',
                                        ).toString());
                                      },
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 10),
                                            child: Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.white,
                                              size: 40,
                                            ),
                                          ),
                                          Text(
                                            'Como chegar?',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Inter',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).cor1,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: InkWell(
                                      onTap: () async {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Aten????o'),
                                              content: Text(
                                                  'Esse estabelecimento n??o possui telefone.'),
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
                                      },
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 10),
                                            child: Icon(
                                              Icons.phone_outlined,
                                              color: Colors.white,
                                              size: 40,
                                            ),
                                          ),
                                          Text(
                                            'Ligar',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Inter',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).cor1,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed(
                                          'Comentarios',
                                          queryParams: {
                                            'infoLocal': serializeParam(
                                              widget.detalhes,
                                              ParamType.JSON,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 10),
                                            child: FaIcon(
                                              FontAwesomeIcons.commentDots,
                                              color: Colors.white,
                                              size: 40,
                                            ),
                                          ),
                                          Text(
                                            'Coment??rios',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Inter',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.75,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Stack(
                                      children: [
                                        if (Theme.of(context).brightness ==
                                            Brightness.light)
                                          Lottie.network(
                                            'https://lottie.host/0f0c799e-e7b9-420b-8f6a-d7c985756198/Q55bs9pmxC.json',
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 65,
                                            fit: BoxFit.cover,
                                            animate: true,
                                          ),
                                        if (Theme.of(context).brightness ==
                                            Brightness.dark)
                                          Lottie.network(
                                            'https://lottie.host/5e74bf3c-efba-4fb0-a20e-ade1b367efec/u0NJMuqWiC.json',
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 45,
                                            fit: BoxFit.cover,
                                            animate: true,
                                          ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 0.75,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).cor1,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 10, 20, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Avalia????es do local',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        color: Color(0xFFE4E4E4),
                                      ),
                                      Expanded(
                                        child: MasonryGridView.count(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          crossAxisCount: 2,
                                          crossAxisSpacing: 10,
                                          mainAxisSpacing: 10,
                                          itemCount: 6,
                                          itemBuilder: (context, index) {
                                            return [
                                              () => Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5, 5, 5, 5),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  'Entrada Principal',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .iconeBotao,
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .info_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .iconeBotao,
                                                                size: 20,
                                                              ),
                                                            ],
                                                          ),
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .wheelchair,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .iconeBotao,
                                                            size: 45,
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                () {
                                                                  if (biomobEntradaAverage >=
                                                                      FFAppState()
                                                                          .tres) {
                                                                    return 'Acess??vel';
                                                                  } else if (biomobEntradaAverage <
                                                                      3 && biomobEntradaAverage > 0) {
                                                                    return 'N??o Acess??vel';
                                                                  } else {
                                                                    return 'Sem avalia????es';
                                                                  }
                                                                }(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .iconeBotao,
                                                                      fontSize:
                                                                          11,
                                                                    ),
                                                              ),
                                                              if (getJsonField(
                                                                    widget
                                                                        .detalhes,
                                                                    r'''$..biomobEntradaAverage''',
                                                                  ) !=
                                                                  null)
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        getJsonField(
                                                                          widget
                                                                              .detalhes,
                                                                          r'''$..biomobEntradaAverage''',
                                                                        ).toString(),
                                                                        '0',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).iconeBotao,
                                                                            fontSize:
                                                                                11,
                                                                          ),
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .star_sharp,
                                                                      color: Color(
                                                                          0xFFFDBA23),
                                                                      size: 16,
                                                                    ),
                                                                  ],
                                                                ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                              () => Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5, 5, 5, 5),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  'Banheiro',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .iconeBotao,
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .info_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .iconeBotao,
                                                                size: 20,
                                                              ),
                                                            ],
                                                          ),
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .wheelchair,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .iconeBotao,
                                                            size: 45,
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                () {
                                                                  if (biomobBanheiroAverage >=
                                                                      FFAppState().tres) {
                                                                    return 'Acess??vel';
                                                                  } else if (biomobBanheiroAverage <
                                                                      3 && biomobBanheiroAverage > 0) {
                                                                    return 'N??o Acess??vel';
                                                                  } else {
                                                                    return 'Sem avalia????es';
                                                                  }
                                                                }(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .iconeBotao,
                                                                      fontSize:
                                                                          11,
                                                                    ),
                                                              ),
                                                              if (getJsonField(
                                                                    widget
                                                                        .detalhes,
                                                                    r'''$..biomobBanheiroAverage''',
                                                                  ) !=
                                                                  null)
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        getJsonField(
                                                                          widget
                                                                              .detalhes,
                                                                          r'''$..biomobBanheiroAverage''',
                                                                        ).toString(),
                                                                        '0',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).iconeBotao,
                                                                            fontSize:
                                                                                11,
                                                                          ),
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .star_sharp,
                                                                      color: Color(
                                                                          0xFFFDBA23),
                                                                      size: 16,
                                                                    ),
                                                                  ],
                                                                ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                              () => Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5, 5, 5, 5),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  'Estacionamento',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .iconeBotao,
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .info_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .iconeBotao,
                                                                size: 20,
                                                              ),
                                                            ],
                                                          ),
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .wheelchair,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .iconeBotao,
                                                            size: 45,
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                () {
                                                                  if (biomobEstacionamentoAverage >=
                                                                      FFAppState().tres) {
                                                                    return 'Acess??vel';
                                                                  } else if (biomobEstacionamentoAverage <
                                                                      3 && biomobEstacionamentoAverage > 0) {
                                                                    return 'N??o Acess??vel';
                                                                  } else {
                                                                    return 'Sem avalia????es';
                                                                  }
                                                                }(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .iconeBotao,
                                                                      fontSize:
                                                                          11,
                                                                    ),
                                                              ),
                                                              if (getJsonField(
                                                                    widget
                                                                        .detalhes,
                                                                    r'''$..biomobEstacionamentoAverage''',
                                                                  ) !=
                                                                  null)
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        getJsonField(
                                                                          widget
                                                                              .detalhes,
                                                                          r'''$..biomobEstacionamentoAverage''',
                                                                        ).toString(),
                                                                        '0',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).iconeBotao,
                                                                            fontSize:
                                                                                11,
                                                                          ),
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .star_sharp,
                                                                      color: Color(
                                                                          0xFFFDBA23),
                                                                      size: 16,
                                                                    ),
                                                                  ],
                                                                ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                              () => Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5, 5, 5, 5),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  'Circula????o Interna',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .iconeBotao,
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .info_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .iconeBotao,
                                                                size: 20,
                                                              ),
                                                            ],
                                                          ),
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .wheelchair,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .iconeBotao,
                                                            size: 45,
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                () {
                                                                  if (biomobCirculacaoAverage >=
                                                                      3) {
                                                                    return 'Acess??vel';
                                                                  } else if (biomobCirculacaoAverage <
                                                                      3 && biomobCirculacaoAverage > 0) {
                                                                    return 'N??o Acess??vel';
                                                                  } else {
                                                                    return 'Sem avalia????es';
                                                                  }
                                                                }(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .iconeBotao,
                                                                      fontSize:
                                                                          11,
                                                                    ),
                                                              ),
                                                              if (getJsonField(
                                                                    widget
                                                                        .detalhes,
                                                                    r'''$..biomobCirculacaoAverage''',
                                                                  ) !=
                                                                  null)
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        getJsonField(
                                                                          widget
                                                                              .detalhes,
                                                                          r'''$..biomobCirculacaoAverage''',
                                                                        ).toString(),
                                                                        '0',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).iconeBotao,
                                                                            fontSize:
                                                                                11,
                                                                          ),
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .star_sharp,
                                                                      color: Color(
                                                                          0xFFFDBA23),
                                                                      size: 16,
                                                                    ),
                                                                  ],
                                                                ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                              () => Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5, 5, 5, 5),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  '??udio/Visual',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .iconeBotao,
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .info_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .iconeBotao,
                                                                size: 20,
                                                              ),
                                                            ],
                                                          ),
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .wheelchair,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .iconeBotao,
                                                            size: 45,
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                () {
                                                                  if (biomobAudioVisualAverage >=
                                                                      FFAppState().tres) {
                                                                    return 'Acess??vel';
                                                                  } else if (biomobAudioVisualAverage <
                                                                      3 && biomobAudioVisualAverage > 0) {
                                                                    return 'N??o Acess??vel';
                                                                  } else {
                                                                    return 'Sem avalia????es';
                                                                  }
                                                                }(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .iconeBotao,
                                                                      fontSize:
                                                                          11,
                                                                    ),
                                                              ),
                                                              if (getJsonField(
                                                                    widget
                                                                        .detalhes,
                                                                    r'''$..biomobAudioVisualAverage''',
                                                                  ) !=
                                                                  null)
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        getJsonField(
                                                                          widget
                                                                              .detalhes,
                                                                          r'''$..biomobAudioVisualAverage''',
                                                                        ).toString(),
                                                                        '0',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).iconeBotao,
                                                                            fontSize:
                                                                                11,
                                                                          ),
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .star_sharp,
                                                                      color: Color(
                                                                          0xFFFDBA23),
                                                                      size: 16,
                                                                    ),
                                                                  ],
                                                                ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                              () => Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5, 5, 5, 5),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  'Cal??ada',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .iconeBotao,
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .info_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .iconeBotao,
                                                                size: 20,
                                                              ),
                                                            ],
                                                          ),
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .wheelchair,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .iconeBotao,
                                                            size: 45,
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                () {
                                                                  if (biomobCalcadaAverage >=
                                                                      3) {
                                                                    return 'Acess??vel';
                                                                  } else if (biomobCalcadaAverage <
                                                                      3 && biomobCalcadaAverage > 0) {
                                                                    return 'N??o Acess??vel';
                                                                  } else {
                                                                    return 'Sem avalia????es';
                                                                  }
                                                                }(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .iconeBotao,
                                                                      fontSize:
                                                                          11,
                                                                    ),
                                                              ),
                                                              if (getJsonField(
                                                                    widget
                                                                        .detalhes,
                                                                    r'''$..biomobCalcadaAverage''',
                                                                  ) !=
                                                                  null)
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        getJsonField(
                                                                          widget
                                                                              .detalhes,
                                                                          r'''$..biomobCalcadaAverage''',
                                                                        ).toString(),
                                                                        '0',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).iconeBotao,
                                                                            fontSize:
                                                                                11,
                                                                          ),
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .star_sharp,
                                                                      color: Color(
                                                                          0xFFFDBA23),
                                                                      size: 16,
                                                                    ),
                                                                  ],
                                                                ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                            ][index]();
                                          },
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
          ),
        ));
  }
}
