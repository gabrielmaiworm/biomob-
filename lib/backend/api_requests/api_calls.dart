import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetDetalhesLocalCall {
  static Future<ApiCallResponse> call({
    String? place = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GET DETALHES LOCAL',
      apiUrl:
          'https://maps.googleapis.com/maps/api/place/details/json?place_id=${place}&key=AIzaSyB5bgwqEelomy8qhYXb95UAXOiRE6BZ3ZU',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application / json; charset = UTF-8',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GETFotoCall {
  static Future<ApiCallResponse> call({
    String? foto = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GET Foto',
      apiUrl:
          'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photo_reference=${foto}&key=AIzaSyB5bgwqEelomy8qhYXb95UAXOiRE6BZ3ZU',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class POSTavaliacaoCall {
  static Future<ApiCallResponse> call({
    String? placeId = '',
    String? placeName = '',
    String? userId = '',
    String? userName = '',
    double? circulacaoInterna,
    double? estacionamento,
    double? calcada,
    double? audioVisual,
    double? entradaPrincipal,
    double? banheiroAcessivel,
    double? star,
    String? comentario = '',
    String? userImage = '',
    String? data = '',
    bool? circulacaoInternaNA,
    bool? estacionamentoNA,
    bool? calcadaNA,
    bool? audioVisualNA,
    bool? entradaPrincipalNA,
    bool? banheiroAcessivelNA,
  }) {
    final body = '''
{
  "placeId": "${placeId}",
  "placeName": "${placeName}",
  "userId": "${userId}",
  "userName": "${userName}",
  "circulacaoInterna": ${circulacaoInterna},
  "estacionamento": ${estacionamento},
  "calcada": ${calcada},
  "audioVisual": ${audioVisual},
  "entradaPrincipal": ${entradaPrincipal},
  "banheiroAcessivel": ${banheiroAcessivel},
  "circulacaoInternaNA": ${circulacaoInternaNA},
  "estacionamentoNA": ${estacionamentoNA},
  "calcadaNA": ${calcadaNA},
  "audioVisualNA": ${audioVisualNA},
  "entradaPrincipalNA": ${entradaPrincipalNA},
  "banheiroAcessivelNA": ${banheiroAcessivelNA},
  "star": "${star}",
  "comentario": "${comentario}",
  "user_image": "${userImage}",
  "data": "${data}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POSTavaliacao',
      apiUrl: 'http://177.70.102.109:3007/biomob-api/evaluation',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetLocaisApiCall {
  static Future<ApiCallResponse> call({
    String? categoria = 'supermaket',
    String? range = '',
    String? posicao = '',
    String? token = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Locais api',
      apiUrl:
          'http://177.70.102.109:3007/biomob-api/places/${categoria}/${posicao}/${range}&pagetoken=${token}',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application / json; charset = UTF-8',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic nome(dynamic response) => getJsonField(
        response,
        r'''$..name''',
        true,
      );
  static dynamic endereco(dynamic response) => getJsonField(
        response,
        r'''$..formatted_address''',
        true,
      );
  static dynamic nota(dynamic response) => getJsonField(
        response,
        r'''$..rating''',
        true,
      );
  static dynamic place(dynamic response) => getJsonField(
        response,
        r'''$..place_id''',
        true,
      );
  static dynamic foto(dynamic response) => getJsonField(
        response,
        r'''$..photo_reference''',
        true,
      );
  static dynamic pageToken(dynamic response) => getJsonField(
        response,
        r'''$.page.nextPageToken''',
      );
}

class GETAvaliacaoPorPlaceIDCall {
  static Future<ApiCallResponse> call({
    String? placeId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GET avaliacao por placeID',
      apiUrl:
          'http://177.70.102.109:3007/biomob-api/evaluation/place/${placeId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GETAvaliacaoUserCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GET avaliacao User',
      apiUrl: 'http://177.70.102.109:3007/biomob-api/evaluation/user/${userId}',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json; charset=iso-8859-1',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CadastroDeUsuarioCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? name = '',
    String? cpf = '',
    String? telefone = '',
    String? deficiencia = '',
    String? foto = '',
    String? password = '',
    String? aniversario = '',
    String? genero = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "name": "${name}",
  "cpf": "${cpf}",
  "telefone": "${telefone}",
  "deficiencia": "${deficiencia}",
  "foto": "${foto}",
  "password": "${password}",
  "dataNascimento": "${aniversario}",
  "genero": "${genero}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Cadastro de usuario',
      apiUrl: 'http://177.70.102.109:3007/biomob-api/user/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class POSTLoginCall {
  static Future<ApiCallResponse> call({
    String? email = 'teste@biomob.com',
    String? password = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POST Login',
      apiUrl: 'http://177.70.102.109:3007/biomob-api/user/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetEventoCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GET EVENTO ',
      apiUrl: 'http://177.70.102.109:3007/biomob-api/evento/lista',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetEmpregoCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GET EMPREGO',
      apiUrl: 'http://177.70.102.109:3007/biomob-api/emprego/lista',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cargo': "sadasdasd",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GETEstacionamentoCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GET Estacionamento',
      apiUrl: 'http://177.70.102.109:3007/biomob-api/estacionamento/lista',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class POSTAvaliacaoEstacionamentoCall {
  static Future<ApiCallResponse> call({
    String? estacionamentoId = '',
    String? enderecoEstacionamento = '',
    String? userId = '',
    String? userName = '',
    String? userImage = '',
    String? vagaAdequada = '',
    String? ausenciaSinalizacao = '',
    String? sinalizacaoInadequada = '',
    String? impossivelUtilizacao = '',
    String? outrosInadequada = '',
    String? inexistente = '',
    String? comentario = '',
  }) {
    final body = '''
{
  "estacionamentoId": "${estacionamentoId}",
  "enderecoEstacionamento": "${enderecoEstacionamento}",
  "userId": "${userId}",
  "userName": "${userName}",
  "user_image": "${userImage}",
  "vagaAdequada": "${vagaAdequada}",
  "ausenciaSinalizacao": "${ausenciaSinalizacao}",
  "sinalizacaoInadequada": "${sinalizacaoInadequada}",
  "impossivelUtilizacao": "${impossivelUtilizacao}",
  "outrosInadequada": "${outrosInadequada}",
  "inexistente": "${inexistente}",
  "comentario": "${comentario}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POST Avaliacao Estacionamento',
      apiUrl: 'http://177.70.102.109:3007/biomob-api/avaliacao-estacionamento',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GoogleMapsCall {
  static Future<ApiCallResponse> call({
    String? token = '?',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'google Maps',
      apiUrl:
          'https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-22.532397116634783,-43.20908720233764&rankby=distance&types=lodging&key=AIzaSyB-3d9F14NKDY1U37mCipwx8wELRG4nqzI&pagetoken=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
