import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_model.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class AvaliacaoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for entradaPrincipal widget.
  String? entradaPrincipalValue;
  // State field(s) for banheiro widget.
  String? banheiroValue;
  // State field(s) for circulacaoInterna widget.
  String? circulacaoInternaValue;
  // State field(s) for estacionamento widget.
  String? estacionamentoValue;
  // State field(s) for calcada widget.
  String? calcadaValue;
  // State field(s) for audioVisual widget.
  String? audioVisualValue;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController?.dispose();
  }

  /// Additional helper methods are added here.

}
