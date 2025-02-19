import 'package:zaplab_design/zaplab_design.dart';

class ChatTab extends StatelessWidget {
  const ChatTab({super.key});

  TabData tabData(BuildContext context) {
    final theme = AppTheme.of(context);
    return TabData(
      label: 'Chat',
      icon: AppIcon.s18(
        theme.icons.characters.zap,
        outlineColor: theme.colors.white66,
      ),
      content: Builder(
        builder: (context) {
          return AppContainer(
            padding: const AppEdgeInsets.all(AppGapSize.s6),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  AppMessageStack(
                    messages: [
                      Message(
                        nevent: '1',
                        message: 'Let\'s bring in the actions 💪',
                        profilePicUrl:
                            'https://cdn.satellite.earth/da67840aae6720f5e5fb9e4c8ce25a85f6d8cbf22f4a04fd44babd58a9badfc6.png',
                        profileName: 'Zaplab',
                        timestamp: DateTime.now(),
                        reactions: [],
                      ),
                    ],
                    recentAmounts: [432, 21, 1618, 420, 1000, 100000, 720],
                    recentReactions: [
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://www.pinclipart.com/picdir/big/357-3571823_free-png-download-ios-10-crying-laughing-emoji.png',
                        emojiName: 'laughing',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://clipart.info/images/ccovers/1516250282red-heart-emoji.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'http://clipart.info/images/ccovers/1516250282red-heart-emoji.png',
                        emojiName: 'heart',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://cdn.satellite.earth/eb0122af34cf27ba7c8248d72294c32a956209f157aa9d697c7cdd6b054f9ea9.png',
                        emojiName: '90',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://cdn.satellite.earth/cbcd50ec769b65c03bc780f0b2d0967f893d10a29f7666d7df8f2d7614d493d4.png',
                        emojiName: 'todo',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://cdn.betterttv.net/emote/5eb9919eec17d81685a496b1/3x.webp',
                        emojiName: 'todo',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://cdn.betterttv.net/emote/5bc116eddd373363d2c76479/3x.webp',
                        emojiName: 'todo',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://nogood.studio/nostr/emotes/NoGood_Yo.gif',
                        emojiName: 'todo',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://www.pinclipart.com/picdir/big/357-3571823_free-png-download-ios-10-crying-laughing-emoji.png',
                        emojiName: 'laughing',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://clipart.info/images/ccovers/1516250282red-heart-emoji.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'http://clipart.info/images/ccovers/1516250282red-heart-emoji.png',
                        emojiName: 'heart',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://cdn.satellite.earth/eb0122af34cf27ba7c8248d72294c32a956209f157aa9d697c7cdd6b054f9ea9.png',
                        emojiName: '90',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://cdn.satellite.earth/cbcd50ec769b65c03bc780f0b2d0967f893d10a29f7666d7df8f2d7614d493d4.png',
                        emojiName: 'todo',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://cdn.betterttv.net/emote/5eb9919eec17d81685a496b1/3x.webp',
                        emojiName: 'todo',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://cdn.betterttv.net/emote/5bc116eddd373363d2c76479/3x.webp',
                        emojiName: 'todo',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://nogood.studio/nostr/emotes/NoGood_Yo.gif',
                        emojiName: 'todo',
                      ),
                    ],
                    onResolveEvent: (identifier) async {
                      // Simulate network delay
                      await Future.delayed(const Duration(seconds: 1));
                      return NostrEvent(
                        nevent: '1',
                        contentType: 'message',
                        message: 'This is a message',
                        profileName: 'Gigi',
                        profilePicUrl:
                            'https://dergigi.com/assets/images/avatars/09.png',
                        timestamp: DateTime.now(),
                        onTap: () {
                          print('tapped');
                        },
                      );
                    },
                    onResolveProfile: (identifier) async {
                      await Future.delayed(const Duration(seconds: 1));
                      return Profile(
                          npub: 'npub',
                          profileName: 'Pip',
                          profilePicUrl: 'https://m.primal.net/IfSZ.jpg');
                    },
                    onResolveEmoji: (identifier) async {
                      await Future.delayed(const Duration(seconds: 1));
                      return 'https://cdn.satellite.earth/eb0122af34cf27ba7c8248d72294c32a956209f157aa9d697c7cdd6b054f9ea9.png';
                    },
                    onResolveHashtag: (identifier) async {
                      await Future.delayed(const Duration(seconds: 1));
                      return () {};
                    },
                    onLinkTap: (url) => print('onLinkTap: $url'),
                    onReply: (eventId) => print('onReply'),
                    onReactionTap: (eventId) => print('onReactionTap'),
                    onZapTap: (eventId) => print('onZapTap'),
                  ),
                  const AppGap.s8(),
                  AppMessageStack(
                    messages: [
                      Message(
                        nevent: '1',
                        message:
                            'Hey, we should invite nostr:npub123 to this community chicos!',
                        profilePicUrl:
                            'https://dergigi.com/assets/images/avatars/09.png',
                        profileName: 'Gigi',
                        timestamp: DateTime.now(),
                        reactions: [],
                        zaps: [],
                      ),
                    ],
                    recentAmounts: [21, 69, 420, 1000],
                    recentReactions: [
                      Reaction(
                        emojiName: '90-percent',
                        emojiUrl:
                            'https://cdn.satellite.earth/eb0122af34cf27ba7c8248d72294c32a956209f157aa9d697c7cdd6b054f9ea9.png',
                        profileName: 'Gigi',
                        profilePicUrl:
                            'https://dergigi.com/assets/images/avatars/09.png',
                        timestamp: DateTime.now(),
                      ),
                    ],
                    onResolveEvent: (identifier) async {
                      // Simulate network delay
                      await Future.delayed(const Duration(seconds: 1));
                      return NostrEvent(
                        nevent: '1',
                        contentType: 'zap',
                        message: 'This is a zap message',
                        profileName: 'Gigi',
                        profilePicUrl:
                            'https://dergigi.com/assets/images/avatars/09.png',
                        timestamp: DateTime.now(),
                        amount: '100',
                        onTap: () {
                          print('tapped');
                        },
                      );
                    },
                    onResolveProfile: (identifier) async {
                      await Future.delayed(const Duration(seconds: 1));
                      return Profile(
                          npub: 'npub1337',
                          profileName: 'Pip',
                          profilePicUrl: 'https://m.primal.net/IfSZ.jpg');
                    },
                    onResolveEmoji: (identifier) async {
                      await Future.delayed(const Duration(seconds: 1));
                      return 'https://cdn.satellite.earth/eb0122af34cf27ba7c8248d72294c32a956209f157aa9d697c7cdd6b054f9ea9.png';
                    },
                    onResolveHashtag: (identifier) async {
                      await Future.delayed(const Duration(seconds: 1));
                      return () {};
                    },
                    onLinkTap: (url) => print('onLinkTap: $url'),
                    onReply: (eventId) => print('onReply'),
                    onReactionTap: (eventId) => print('onReactionTap'),
                    onZapTap: (eventId) => print('onZapTap'),
                  ),
                  const AppGap.s8(),
                  AppMessageStack(
                    messages: [
                      Message(
                        nevent: '1',
                        message:
                            'nostr:nevent1234567890 This take is a bit less relevant now that we have Communities as key pairs.',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        profileName: 'Niel Liesmons',
                        timestamp: DateTime.now(),
                        reactions: [
                          Reaction(
                            emojiName: 'todo',
                            emojiUrl:
                                'https://cdn.satellite.earth/eb0122af34cf27ba7c8248d72294c32a956209f157aa9d697c7cdd6b054f9ea9.png',
                            profileName: 'Gigi',
                            profilePicUrl:
                                'https://dergigi.com/assets/images/avatars/09.png',
                            timestamp: DateTime.now(),
                          ),
                        ],
                      ),
                    ],
                    recentAmounts: [21, 69, 420, 1000],
                    recentReactions: [
                      Reaction(
                        emojiName: '90-percent',
                        emojiUrl:
                            'https://cdn.satellite.earth/eb0122af34cf27ba7c8248d72294c32a956209f157aa9d697c7cdd6b054f9ea9.png',
                        profileName: 'Gigi',
                        profilePicUrl:
                            'https://dergigi.com/assets/images/avatars/09.png',
                        timestamp: DateTime.now(),
                      ),
                    ],
                    onResolveEvent: (identifier) async {
                      // Simulate network delay
                      await Future.delayed(const Duration(seconds: 1));
                      return NostrEvent(
                        nevent: '1',
                        contentType: 'article',
                        title: 'Simple Questions',
                        imageUrl:
                            'https://cdn.satellite.earth/64b885412eb944828d964c21242f0c7415b1afbf4554eca08f9dd1afba0c7584.png',
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        onTap: () {
                          print('tapped');
                        },
                      );
                    },
                    onResolveProfile: (identifier) async {
                      await Future.delayed(const Duration(seconds: 1));
                      return Profile(
                          npub: 'npub',
                          profileName: 'Pip',
                          profilePicUrl: 'https://m.primal.net/IfSZ.jpg');
                    },
                    onResolveEmoji: (identifier) async {
                      await Future.delayed(const Duration(seconds: 1));
                      return 'https://cdn.satellite.earth/eb0122af34cf27ba7c8248d72294c32a956209f157aa9d697c7cdd6b054f9ea9.png';
                    },
                    onResolveHashtag: (identifier) async {
                      await Future.delayed(const Duration(seconds: 1));
                      return () {};
                    },
                    onLinkTap: (url) => print('onLinkTap: $url'),
                    onReply: (eventId) => print('onReply'),
                    onReactionTap: (eventId) => print('onReactionTap'),
                    onZapTap: (eventId) => print('onZapTap'),
                  ),
                  const AppGap.s8(),
                  AppMessageStack(
                    messages: [
                      Message(
                        nevent: '1',
                        message:
                            'nostr:nevent1234567890 Wait, I can quote more than one message in here? nostr:nevent1234567890 Holy bananas!',
                        profilePicUrl:
                            'https://files.sovbit.host/media/0689df5847a8d3376892da29622d7c0fdc1ef1958f4bc4471d90966aa1eca9f2/cfba34d66cd67339aca14389b367c02f36fec87c325ab0415143ed8db45c2c74.webp',
                        profileName: 'The Beave',
                        timestamp: DateTime.now(),
                        reactions: [],
                      ),
                    ],
                    recentAmounts: [432, 21, 1618, 420, 1000, 100000, 720],
                    recentReactions: [
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://www.pinclipart.com/picdir/big/357-3571823_free-png-download-ios-10-crying-laughing-emoji.png',
                        emojiName: 'laughing',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://clipart.info/images/ccovers/1516250282red-heart-emoji.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'http://clipart.info/images/ccovers/1516250282red-heart-emoji.png',
                        emojiName: 'heart',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://cdn.satellite.earth/eb0122af34cf27ba7c8248d72294c32a956209f157aa9d697c7cdd6b054f9ea9.png',
                        emojiName: '90',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://cdn.satellite.earth/cbcd50ec769b65c03bc780f0b2d0967f893d10a29f7666d7df8f2d7614d493d4.png',
                        emojiName: 'todo',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://cdn.betterttv.net/emote/5eb9919eec17d81685a496b1/3x.webp',
                        emojiName: 'todo',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://cdn.betterttv.net/emote/5bc116eddd373363d2c76479/3x.webp',
                        emojiName: 'todo',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://nogood.studio/nostr/emotes/NoGood_Yo.gif',
                        emojiName: 'todo',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://www.pinclipart.com/picdir/big/357-3571823_free-png-download-ios-10-crying-laughing-emoji.png',
                        emojiName: 'laughing',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://clipart.info/images/ccovers/1516250282red-heart-emoji.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'http://clipart.info/images/ccovers/1516250282red-heart-emoji.png',
                        emojiName: 'heart',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://cdn.satellite.earth/eb0122af34cf27ba7c8248d72294c32a956209f157aa9d697c7cdd6b054f9ea9.png',
                        emojiName: '90',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://cdn.satellite.earth/cbcd50ec769b65c03bc780f0b2d0967f893d10a29f7666d7df8f2d7614d493d4.png',
                        emojiName: 'todo',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://cdn.betterttv.net/emote/5eb9919eec17d81685a496b1/3x.webp',
                        emojiName: 'todo',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://cdn.betterttv.net/emote/5bc116eddd373363d2c76479/3x.webp',
                        emojiName: 'todo',
                      ),
                      Reaction(
                        profileName: 'Niel Liesmons',
                        profilePicUrl:
                            'https://cdn.satellite.earth/946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        timestamp: DateTime.now(),
                        emojiUrl:
                            'https://nogood.studio/nostr/emotes/NoGood_Yo.gif',
                        emojiName: 'todo',
                      ),
                    ],
                    onResolveEvent: (identifier) async {
                      // Simulate network delay
                      await Future.delayed(const Duration(seconds: 1));
                      return NostrEvent(
                        nevent: '1',
                        contentType: 'message',
                        message:
                            'Hey, we should invite nostr:npub123 to this community chicos!',
                        profileName: 'Gigi',
                        profilePicUrl:
                            'https://dergigi.com/assets/images/avatars/09.png',
                        timestamp: DateTime.now(),
                        onTap: () {
                          print('tapped');
                        },
                      );
                    },
                    onResolveProfile: (identifier) async {
                      await Future.delayed(const Duration(seconds: 1));
                      return Profile(
                          npub: 'npub',
                          profileName: 'Pip',
                          profilePicUrl: 'https://m.primal.net/IfSZ.jpg');
                    },
                    onResolveEmoji: (identifier) async {
                      await Future.delayed(const Duration(seconds: 1));
                      return 'https://cdn.satellite.earth/eb0122af34cf27ba7c8248d72294c32a956209f157aa9d697c7cdd6b054f9ea9.png';
                    },
                    onResolveHashtag: (identifier) async {
                      await Future.delayed(const Duration(seconds: 1));
                      return () {};
                    },
                    onLinkTap: (url) => print('onLinkTap: $url'),
                    onReply: (eventId) => print('onReply'),
                    onReactionTap: (eventId) => print('onReactionTap'),
                    onZapTap: (eventId) => print('onZapTap'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) => tabData(context).content;
}
