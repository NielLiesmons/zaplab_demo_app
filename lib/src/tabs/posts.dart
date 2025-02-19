import 'package:zaplab_design/zaplab_design.dart';

class PostsTab extends StatelessWidget {
  const PostsTab({super.key});

  TabData tabData(BuildContext context) {
    final theme = AppTheme.of(context);

    return TabData(
      label: 'Posts',
      icon: AppIcon.s16(
        theme.icons.characters.zap,
        outlineColor: theme.colors.white66,
        outlineThickness: LineThicknessData.normal().medium,
      ),
      content: Builder(
        builder: (context) {
          return AppPost(
            communities: [
              Community(
                ncommunity: 'ncommunity1blablabla',
                profilePicUrl: 'https://via.placeholder.com/150',
                communityName: 'Nips Out',
              ),
              Community(
                ncommunity: 'ncommunity1blablabla',
                profilePicUrl: 'https://via.placeholder.com/150',
                communityName: 'Nips Out',
              ),
              Community(
                ncommunity: 'ncommunity1blablabla',
                profilePicUrl: 'https://via.placeholder.com/150',
                communityName: 'Nips Out',
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
            onLinkTap: (url) {
              print(url);
            },
            content: 'Hello, world!',
            profileName: 'John Doe',
            profilePicUrl: 'https://via.placeholder.com/150',
            timestamp: DateTime(2025, 1, 24, 12, 0, 0),
            reactions: [
              Reaction(
                emojiName: 'todo',
                emojiUrl: 'https://via.placeholder.com/150',
                profileName: 'John Doe',
                profilePicUrl: 'https://via.placeholder.com/150',
                timestamp: DateTime(2025, 1, 24, 12, 0, 0),
              ),
            ],
            zaps: [
              Zap(
                nevent: '1',
                amount: 100,
                comment: 'Zap!',
                profileName: 'John Doe',
                profilePicUrl: 'https://via.placeholder.com/150',
                timestamp: DateTime(2025, 1, 24, 12, 0, 0),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) => tabData(context).content;
}
