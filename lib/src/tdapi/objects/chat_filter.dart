part of '../tdapi.dart';

class ChatFilter extends TdObject {

  /// Represents a filter of user chats
  const ChatFilter({
    required this.title,
    required this.iconName,
    required this.pinnedChatIds,
    required this.includedChatIds,
    required this.excludedChatIds,
    required this.excludeMuted,
    required this.excludeRead,
    required this.excludeArchived,
    required this.includeContacts,
    required this.includeNonContacts,
    required this.includeBots,
    required this.includeGroups,
    required this.includeChannels,
    this.extra,
    this.clientId,
  });
  
  /// [title] The title of the filter; 1-12 characters without line feeds
  final String title;

  /// [iconName] The chosen icon name for short filter representation. If non-empty, must be one of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown", "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work".. If empty, use getChatFilterDefaultIconName to get default icon name for the filter
  final String iconName;

  /// [pinnedChatIds] The chat identifiers of pinned chats in the filtered chat list
  final List<int> pinnedChatIds;

  /// [includedChatIds] The chat identifiers of always included chats in the filtered chat list
  final List<int> includedChatIds;

  /// [excludedChatIds] The chat identifiers of always excluded chats in the filtered chat list
  final List<int> excludedChatIds;

  /// [excludeMuted] True, if muted chats need to be excluded
  final bool excludeMuted;

  /// [excludeRead] True, if read chats need to be excluded
  final bool excludeRead;

  /// [excludeArchived] True, if archived chats need to be excluded
  final bool excludeArchived;

  /// [includeContacts] True, if contacts need to be included
  final bool includeContacts;

  /// [includeNonContacts] True, if non-contact users need to be included
  final bool includeNonContacts;

  /// [includeBots] True, if bots need to be included
  final bool includeBots;

  /// [includeGroups] True, if basic groups and supergroups need to be included
  final bool includeGroups;

  /// [includeChannels] True, if channels need to be included
  final bool includeChannels;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatFilter.fromJson(Map<String, dynamic> json) => ChatFilter(
    title: json['title'],
    iconName: json['icon_name'],
    pinnedChatIds: List<int>.from((json['pinned_chat_ids'] ?? []).map((item) => item).toList()),
    includedChatIds: List<int>.from((json['included_chat_ids'] ?? []).map((item) => item).toList()),
    excludedChatIds: List<int>.from((json['excluded_chat_ids'] ?? []).map((item) => item).toList()),
    excludeMuted: json['exclude_muted'],
    excludeRead: json['exclude_read'],
    excludeArchived: json['exclude_archived'],
    includeContacts: json['include_contacts'],
    includeNonContacts: json['include_non_contacts'],
    includeBots: json['include_bots'],
    includeGroups: json['include_groups'],
    includeChannels: json['include_channels'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "icon_name": iconName,
      "pinned_chat_ids": pinnedChatIds.map((i) => i).toList(),
      "included_chat_ids": includedChatIds.map((i) => i).toList(),
      "excluded_chat_ids": excludedChatIds.map((i) => i).toList(),
      "exclude_muted": excludeMuted,
      "exclude_read": excludeRead,
      "exclude_archived": excludeArchived,
      "include_contacts": includeContacts,
      "include_non_contacts": includeNonContacts,
      "include_bots": includeBots,
      "include_groups": includeGroups,
      "include_channels": includeChannels,
    };
  }
  
  ChatFilter copyWith({
    String? title,
    String? iconName,
    List<int>? pinnedChatIds,
    List<int>? includedChatIds,
    List<int>? excludedChatIds,
    bool? excludeMuted,
    bool? excludeRead,
    bool? excludeArchived,
    bool? includeContacts,
    bool? includeNonContacts,
    bool? includeBots,
    bool? includeGroups,
    bool? includeChannels,
    dynamic extra,
    int? clientId,
  }) => ChatFilter(
    title: title ?? this.title,
    iconName: iconName ?? this.iconName,
    pinnedChatIds: pinnedChatIds ?? this.pinnedChatIds,
    includedChatIds: includedChatIds ?? this.includedChatIds,
    excludedChatIds: excludedChatIds ?? this.excludedChatIds,
    excludeMuted: excludeMuted ?? this.excludeMuted,
    excludeRead: excludeRead ?? this.excludeRead,
    excludeArchived: excludeArchived ?? this.excludeArchived,
    includeContacts: includeContacts ?? this.includeContacts,
    includeNonContacts: includeNonContacts ?? this.includeNonContacts,
    includeBots: includeBots ?? this.includeBots,
    includeGroups: includeGroups ?? this.includeGroups,
    includeChannels: includeChannels ?? this.includeChannels,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'chatFilter';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
