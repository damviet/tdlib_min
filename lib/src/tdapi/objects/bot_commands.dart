part of '../tdapi.dart';

class BotCommands extends TdObject {

  /// Contains a list of bot commands
  const BotCommands({
    required this.botUserId,
    required this.commands,
    this.extra,
    this.clientId,
  });
  
  /// [botUserId] Bot's user identifier 
  final int botUserId;

  /// [commands] List of bot commands
  final List<BotCommand> commands;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory BotCommands.fromJson(Map<String, dynamic> json) => BotCommands(
    botUserId: json['bot_user_id'],
    commands: List<BotCommand>.from((json['commands'] ?? []).map((item) => BotCommand.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "commands": commands.map((i) => i.toJson()).toList(),
    };
  }
  
  BotCommands copyWith({
    int? botUserId,
    List<BotCommand>? commands,
    dynamic extra,
    int? clientId,
  }) => BotCommands(
    botUserId: botUserId ?? this.botUserId,
    commands: commands ?? this.commands,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'botCommands';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
