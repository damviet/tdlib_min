part of '../tdapi.dart';

class GetChatSparseMessagePositions extends TdFunction {

  /// Returns sparse positions of messages of the specified type in the chat to be used for shared media scroll implementation. Returns the results in reverse chronological order (i.e., in order of decreasing message_id).. Cannot be used in secret chats or with searchMessagesFilterFailedToSend filter without an enabled message database
  const GetChatSparseMessagePositions({
    required this.chatId,
    required this.filter,
    required this.fromMessageId,
    required this.limit,
  });
  
  /// [chatId] Identifier of the chat in which to return information about message positions
  final int chatId;

  /// [filter] Filter for message content. Filters searchMessagesFilterEmpty, searchMessagesFilterMention and searchMessagesFilterUnreadMention are unsupported in this function
  final SearchMessagesFilter filter;

  /// [fromMessageId] The message identifier from which to return information about message positions
  final int fromMessageId;

  /// [limit] The expected number of message positions to be returned; 50-2000. A smaller number of positions can be returned, if there are not enough appropriate messages
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "filter": filter.toJson(),
      "from_message_id": fromMessageId,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetChatSparseMessagePositions copyWith({
    int? chatId,
    SearchMessagesFilter? filter,
    int? fromMessageId,
    int? limit,
  }) => GetChatSparseMessagePositions(
    chatId: chatId ?? this.chatId,
    filter: filter ?? this.filter,
    fromMessageId: fromMessageId ?? this.fromMessageId,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getChatSparseMessagePositions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
