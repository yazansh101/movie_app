part of "api.dart";

class ApiRequest extends Equatable {
  final Map<String, dynamic>? headers;
  final String url;
  final Map<String, dynamic>? body;
  final Map<String, dynamic>? params;

  const ApiRequest({
    required this.url,
     this.headers,
     this.body,
     this.params,
  });

  

  @override
  List<Object?> get props => [headers, url, body, params,];
}

