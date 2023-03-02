import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _calcadaReferencia =
        prefs.getString('ff_calcadaReferencia')?.ref ?? _calcadaReferencia;
    _Acessivel = prefs.getDouble('ff_Acessivel') ?? _Acessivel;
    _NaoPossui = prefs.getDouble('ff_NaoPossui') ?? _NaoPossui;
    _nomePersist = prefs.getString('ff_nomePersist') ?? _nomePersist;
    _emailPersist = prefs.getString('ff_emailPersist') ?? _emailPersist;
    _fotoPersist = prefs.getString('ff_fotoPersist') ?? _fotoPersist;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DocumentReference? _calcadaReferencia;
  DocumentReference? get calcadaReferencia => _calcadaReferencia;
  set calcadaReferencia(DocumentReference? _value) {
    _calcadaReferencia = _value;
    _value != null
        ? prefs.setString('ff_calcadaReferencia', _value.path)
        : prefs.remove('ff_calcadaReferencia');
  }

  String _categoria = 'lodging';
  String get categoria => _categoria;
  set categoria(String _value) {
    _categoria = _value;
  }

  String _posicao = '';
  String get posicao => _posicao;
  set posicao(String _value) {
    _posicao = _value;
  }

  String _foto = '';
  String get foto => _foto;
  set foto(String _value) {
    _foto = _value;
  }

  String _distancia = '500';
  String get distancia => _distancia;
  set distancia(String _value) {
    _distancia = _value;
  }

  String _vazio = '';
  String get vazio => _vazio;
  set vazio(String _value) {
    _vazio = _value;
  }

  String _nome = '';
  String get nome => _nome;
  set nome(String _value) {
    _nome = _value;
  }

  String _email = '';
  String get email => _email;
  set email(String _value) {
    _email = _value;
  }

  String _senha = '';
  String get senha => _senha;
  set senha(String _value) {
    _senha = _value;
  }

  bool _showFullList = true;
  bool get showFullList => _showFullList;
  set showFullList(bool _value) {
    _showFullList = _value;
  }

  String _verificaNota = 'NaN';
  String get verificaNota => _verificaNota;
  set verificaNota(String _value) {
    _verificaNota = _value;
  }

  String _Estrelas = '';
  String get Estrelas => _Estrelas;
  set Estrelas(String _value) {
    _Estrelas = _value;
  }

  String _choiceType = 'hospedagem';
  String get choiceType => _choiceType;
  set choiceType(String _value) {
    _choiceType = _value;
  }

  double _entradaPrincipal = 0.0;
  double get entradaPrincipal => _entradaPrincipal;
  set entradaPrincipal(double _value) {
    _entradaPrincipal = _value;
  }

  double _banheiro = 0.0;
  double get banheiro => _banheiro;
  set banheiro(double _value) {
    _banheiro = _value;
  }

  double _circulacaoInterna = 0.0;
  double get circulacaoInterna => _circulacaoInterna;
  set circulacaoInterna(double _value) {
    _circulacaoInterna = _value;
  }

  double _estacionamento = 0.0;
  double get estacionamento => _estacionamento;
  set estacionamento(double _value) {
    _estacionamento = _value;
  }

  double _calcada = 0.0;
  double get calcada => _calcada;
  set calcada(double _value) {
    _calcada = _value;
  }

  double _audioVisual = 0.0;
  double get audioVisual => _audioVisual;
  set audioVisual(double _value) {
    _audioVisual = _value;
  }

  bool _circulacaoInternaNA = false;
  bool get circulacaoInternaNA => _circulacaoInternaNA;
  set circulacaoInternaNA(bool _value) {
    _circulacaoInternaNA = _value;
  }

  bool _estacionamentoNA = false;
  bool get estacionamentoNA => _estacionamentoNA;
  set estacionamentoNA(bool _value) {
    _estacionamentoNA = _value;
  }

  bool _calcadaNA = false;
  bool get calcadaNA => _calcadaNA;
  set calcadaNA(bool _value) {
    _calcadaNA = _value;
  }

  bool _audioVisualNA = false;
  bool get audioVisualNA => _audioVisualNA;
  set audioVisualNA(bool _value) {
    _audioVisualNA = _value;
  }

  bool _entradaPrincipalNA = false;
  bool get entradaPrincipalNA => _entradaPrincipalNA;
  set entradaPrincipalNA(bool _value) {
    _entradaPrincipalNA = _value;
  }

  bool _banheiroAcessivelNA = false;
  bool get banheiroAcessivelNA => _banheiroAcessivelNA;
  set banheiroAcessivelNA(bool _value) {
    _banheiroAcessivelNA = _value;
  }

  double _Acessivel = 3;
  double get Acessivel => _Acessivel;
  set Acessivel(double _value) {
    _Acessivel = _value;
    prefs.setDouble('ff_Acessivel', _value);
  }

  double _NaoPossui = 2;
  double get NaoPossui => _NaoPossui;
  set NaoPossui(double _value) {
    _NaoPossui = _value;
    prefs.setDouble('ff_NaoPossui', _value);
  }

  String _deep = '';
  String get deep => _deep;
  set deep(String _value) {
    _deep = _value;
  }

  double _avaliacaoNota = 0.0;
  double get avaliacaoNota => _avaliacaoNota;
  set avaliacaoNota(double _value) {
    _avaliacaoNota = _value;
  }

  String _adequada = '';
  String get adequada => _adequada;
  set adequada(String _value) {
    _adequada = _value;
  }

  String _ausenciaSinalizacao = '';
  String get ausenciaSinalizacao => _ausenciaSinalizacao;
  set ausenciaSinalizacao(String _value) {
    _ausenciaSinalizacao = _value;
  }

  String _sinalizacaoInadequada = '';
  String get sinalizacaoInadequada => _sinalizacaoInadequada;
  set sinalizacaoInadequada(String _value) {
    _sinalizacaoInadequada = _value;
  }

  String _impossivelUtilizacao = '';
  String get impossivelUtilizacao => _impossivelUtilizacao;
  set impossivelUtilizacao(String _value) {
    _impossivelUtilizacao = _value;
  }

  String _outrosInadequada = '';
  String get outrosInadequada => _outrosInadequada;
  set outrosInadequada(String _value) {
    _outrosInadequada = _value;
  }

  String _inexistente = '';
  String get inexistente => _inexistente;
  set inexistente(String _value) {
    _inexistente = _value;
  }

  String _filtroEstacionamento = 'Vaga de Gestante';
  String get filtroEstacionamento => _filtroEstacionamento;
  set filtroEstacionamento(String _value) {
    _filtroEstacionamento = _value;
  }

  double _tres = 3;
  double get tres => _tres;
  set tres(double _value) {
    _tres = _value;
  }

  String _openMenu = '1';
  String get openMenu => _openMenu;
  set openMenu(String _value) {
    _openMenu = _value;
  }

  String _SelectedMenu = '';
  String get SelectedMenu => _SelectedMenu;
  set SelectedMenu(String _value) {
    _SelectedMenu = _value;
  }

  String _busca = '';
  String get busca => _busca;
  set busca(String _value) {
    _busca = _value;
  }

  String _nomePersist = '';
  String get nomePersist => _nomePersist;
  set nomePersist(String _value) {
    _nomePersist = _value;
    prefs.setString('ff_nomePersist', _value);
  }

  String _emailPersist = '';
  String get emailPersist => _emailPersist;
  set emailPersist(String _value) {
    _emailPersist = _value;
    prefs.setString('ff_emailPersist', _value);
  }

  String _fotoPersist = '';
  String get fotoPersist => _fotoPersist;
  set fotoPersist(String _value) {
    _fotoPersist = _value;
    prefs.setString('ff_fotoPersist', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
