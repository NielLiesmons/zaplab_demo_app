import 'dart:async';
import 'package:zaplab_design/zaplab_design.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({super.key});

  static TabData tabData(BuildContext context) {
    final theme = AppTheme.of(context);

    return TabData(
      label: 'Chat',
      icon: AppIcon.s16(theme.icons.characters.zap),
      content: const ChatTab(),
    );
  }

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  final _messageController = StreamController<Message>();
  final _reactionController = StreamController<(String, Reaction)>();
  final _zapController = StreamController<(String, Zap)>();
  final List<Timer> _timers = [];

  TabData get tabData {
    final theme = AppTheme.of(context);

    return TabData(
      label: 'Chat',
      icon: AppIcon.s16(theme.icons.characters.zap),
      content: AppMessageFeed(
        initialMessages: [
          Message(
            eventId: '1',
            content:
                "nostr:nevent1qs2nk9jqg I'm working on a slick zap and reactions display",
            profileName: "Niel Liesmons",
            profilePicUrl:
                'https://primal.b-cdn.net/media-cache?s=o&a=1&u=https%3A%2F%2Fcdn.satellite.earth%2F946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
            timestamp: DateTime.now().subtract(const Duration(minutes: 45)),
            quotedMessages: [
              QuotedMessage(
                eventId: 'nevent1qs2nk9jqg',
                content: "This is a quoted message",
                profileName: "Bob",
                profilePicUrl: 'https://example.com/bob.jpg',
                timestamp: DateTime.now().subtract(const Duration(hours: 1)),
              ),
            ],
          ),
        ],
        messageStream: _messageController.stream,
        reactionStream: _reactionController.stream,
        zapStream: _zapController.stream,
        onReply: (eventId) => print('Reply to: $eventId'),
        onActions: (eventId) => print('Actions for: $eventId'),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _setupDemoSequence();
  }

  void _setupDemoSequence() {
    void addTimer(Duration duration, VoidCallback callback) {
      _timers.add(Timer(duration, callback));
    }

    addTimer(const Duration(seconds: 2), () {
      if (!mounted) return;
      _messageController.add(Message(
        eventId: '2',
        content: "Custom-emoji-first 💪",
        profileName: "Niel Liesmons",
        profilePicUrl:
            'https://primal.b-cdn.net/media-cache?s=o&a=1&u=https%3A%2F%2Fcdn.satellite.earth%2F946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
        timestamp: DateTime.now().subtract(const Duration(minutes: 44)),
      ));
    });

    addTimer(const Duration(seconds: 3), () {
      if (!mounted) return;
      _reactionController.add((
        "1",
        Reaction(
          emojiUrl:
              'https://cdn.satellite.earth/60a5e73bfa6dfd35bd0b144f38f6ed2aaab0606b2bd68b623f419ae0709fa10a.png',
          profileName: "Pip",
          profilePicUrl:
              'https://primal.b-cdn.net/media-cache?s=o&a=1&u=https%3A%2F%2Fm.primal.net%2FIfSZ.jpg',
          timestamp: DateTime.now(),
        ),
      ));
    });

    addTimer(const Duration(seconds: 7), () {
      if (!mounted) return;
      _reactionController.add((
        "2",
        Reaction(
          emojiUrl:
              'https://cdn.betterttv.net/emote/5bc116eddd373363d2c76479/3x.webp',
          profileName: "Pip",
          profilePicUrl:
              'https://primal.b-cdn.net/media-cache?s=o&a=1&u=https%3A%2F%2Fm.primal.net%2FIfSZ.jpg',
          timestamp: DateTime.now(),
        ),
      ));
    });

    addTimer(const Duration(milliseconds: 7600), () {
      if (!mounted) return;
      _reactionController.add((
        "1",
        Reaction(
          emojiUrl:
              'https://cdn.7tv.app/emote/60abf171870d317bef23d399/4x.webp', // NODDERS
          profileName: "franzap",
          profilePicUrl:
              'https://primal.b-cdn.net/media-cache?s=o&a=1&u=https%3A%2F%2Fnostr.build%2Fi%2Fnostr.build_1732d9a6cd9614c6c4ac3b8f0ee4a8242e9da448e2aacb82e7681d9d0bc36568.jpg',
          timestamp: DateTime.now(),
        ),
      ));
    });

    addTimer(const Duration(milliseconds: 9700), () {
      if (!mounted) return;
      _reactionController.add((
        "1",
        Reaction(
          emojiUrl:
              'https://cdn.betterttv.net/emote/55b6f480e66682f576dd94f5/3x.webp',
          profileName: "Alice",
          profilePicUrl: 'https://vitorpamplona.com/images/me_300.jpg',
          timestamp: DateTime.now(),
        ),
      ));
    });

    addTimer(const Duration(seconds: 6), () {
      if (!mounted) return;
      _messageController.add(Message(
        eventId: '3',
        content: "Lol, I'm not sure if I'm ready for this.",
        profileName: "Pip",
        profilePicUrl:
            'https://primal.b-cdn.net/media-cache?s=o&a=1&u=https%3A%2F%2Fm.primal.net%2FIfSZ.jpg',
        timestamp: DateTime.now().subtract(const Duration(minutes: 40)),
      ));
    });

    addTimer(const Duration(seconds: 10), () {
      if (!mounted) return;
      _messageController.add(Message(
        eventId: '4',
        content: "Born ready 🫡",
        profileName: "franzap",
        profilePicUrl:
            'https://primal.b-cdn.net/media-cache?s=o&a=1&u=https%3A%2F%2Fnostr.build%2Fi%2Fnostr.build_1732d9a6cd9614c6c4ac3b8f0ee4a8242e9da448e2aacb82e7681d9d0bc36568.jpg',
        timestamp: DateTime.now().subtract(const Duration(minutes: 38)),
      ));
    });

    addTimer(const Duration(seconds: 13), () {
      if (!mounted) return;
      _zapController.add((
        "1",
        Zap(
          amount: 110,
          profileName: "franzap",
          profilePicUrl:
              'https://primal.b-cdn.net/media-cache?s=o&a=1&u=https%3A%2F%2Fnostr.build%2Fi%2Fnostr.build_1732d9a6cd9614c6c4ac3b8f0ee4a8242e9da448e2aacb82e7681d9d0bc36568.jpg',
          timestamp: DateTime.now(),
        ),
      ));
    });

    addTimer(const Duration(seconds: 14), () {
      if (!mounted) return;
      _messageController.add(Message(
        eventId: '5',
        content: "Wen better pop-in animations?",
        profileName: "Pip",
        profilePicUrl:
            'https://primal.b-cdn.net/media-cache?s=o&a=1&u=https%3A%2F%2Fm.primal.net%2FIfSZ.jpg',
        timestamp: DateTime.now().subtract(const Duration(minutes: 35)),
      ));
    });

    addTimer(const Duration(seconds: 16), () {
      if (!mounted) return;
      _messageController.add(Message(
        eventId: '2',
        content: "¡Mañana!",
        profileName: "Niel Liesmons",
        profilePicUrl:
            'https://primal.b-cdn.net/media-cache?s=o&a=1&u=https%3A%2F%2Fcdn.satellite.earth%2F946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
        timestamp: DateTime.now().subtract(const Duration(minutes: 44)),
      ));
    });

    addTimer(const Duration(seconds: 18), () {
      if (!mounted) return;
      _messageController.add(Message(
        eventId: '6',
        content:
            "Hey @npub1nf6qvk3gm7rtz4pn6ufhudh8v0vgwh8gn8qp0t7fj09ypw2c69sq0h4a8w, check out this message nostr:nevent1qs2nk9jqg and this #hashtag. Also, **this is bold**!",
        profileName: "Alice",
        profilePicUrl: 'https://vitorpamplona.com/images/me_300.jpg',
        timestamp: DateTime.now().subtract(const Duration(minutes: 32)),
        quotedMessages: [
          QuotedMessage(
            eventId: 'nevent1qs2nk9jqg',
            content: "This is a quoted message",
            profileName: "Bob",
            profilePicUrl: 'https://example.com/bob.jpg',
            timestamp: DateTime.now().subtract(const Duration(hours: 1)),
          ),
        ],
      ));
    });
  }

  @override
  void dispose() {
    for (final timer in _timers) {
      timer.cancel();
    }
    _messageController.close();
    _reactionController.close();
    _zapController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => tabData.content;
}
