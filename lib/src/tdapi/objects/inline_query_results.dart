part of '../tdapi.dart';

class InlineQueryResults extends TdObject {

  /// Represents the results of the inline query. Use sendInlineQueryResultMessage to send the result of the query
  const InlineQueryResults({
    required this.inlineQueryId,
    required this.nextOffset,
    required this.results,
    required this.switchPmText,
    required this.switchPmParameter,
    this.extra,
    this.clientId,
  });
  
  /// [inlineQueryId] Unique identifier of the inline query 
  final int inlineQueryId;

  /// [nextOffset] The offset for the next request. If empty, there are no more results 
  final String nextOffset;

  /// [results] Results of the query
  final List<InlineQueryResult> results;

  /// [switchPmText] If non-empty, this text must be shown on the button, which opens a private chat with the bot and sends the bot a start message with the switch_pm_parameter
  final String switchPmText;

  /// [switchPmParameter] Parameter for the bot start message
  final String switchPmParameter;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InlineQueryResults.fromJson(Map<String, dynamic> json) => InlineQueryResults(
    inlineQueryId: int.parse(json['inline_query_id']),
    nextOffset: json['next_offset'],
    results: List<InlineQueryResult>.from((json['results'] ?? []).map((item) => InlineQueryResult.fromJson(item)).toList()),
    switchPmText: json['switch_pm_text'],
    switchPmParameter: json['switch_pm_parameter'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "inline_query_id": inlineQueryId,
      "next_offset": nextOffset,
      "results": results.map((i) => i.toJson()).toList(),
      "switch_pm_text": switchPmText,
      "switch_pm_parameter": switchPmParameter,
    };
  }
  
  InlineQueryResults copyWith({
    int? inlineQueryId,
    String? nextOffset,
    List<InlineQueryResult>? results,
    String? switchPmText,
    String? switchPmParameter,
    dynamic extra,
    int? clientId,
  }) => InlineQueryResults(
    inlineQueryId: inlineQueryId ?? this.inlineQueryId,
    nextOffset: nextOffset ?? this.nextOffset,
    results: results ?? this.results,
    switchPmText: switchPmText ?? this.switchPmText,
    switchPmParameter: switchPmParameter ?? this.switchPmParameter,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'inlineQueryResults';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
