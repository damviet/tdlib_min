part of '../tdapi.dart';

class ChatLists extends TdObject {

  /// Contains a list of chat lists
  const ChatLists({
    required this.chatLists,
    this.extra,
    this.clientId,
  });
  
  /// [chatLists] List of chat lists
  final List<ChatList> chatLists;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatLists.fromJson(Map<String, dynamic> json) => ChatLists(
    chatLists: List<ChatList>.from((json['chat_lists'] ?? []).map((item) => ChatList.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_lists": chatLists.map((i) => i.toJson()).toList(),
    };
  }
  
  ChatLists copyWith({
    List<ChatList>? chatLists,
    dynamic extra,
    int? clientId,
  }) => ChatLists(
    chatLists: chatLists ?? this.chatLists,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'chatLists';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
