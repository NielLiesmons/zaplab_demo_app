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
                profilePicUrl: 'https://via.placeholder.com/150',
                name: 'John Doe',
              ),
              Community(
                profilePicUrl: 'https://via.placeholder.com/150',
                name: 'John Doe',
              ),
              Community(
                profilePicUrl: 'https://via.placeholder.com/150',
                name: 'John Doe',
              ),
            ],
            content: 'Hello, world!',
            profileName: 'John Doe',
            profilePicUrl: 'https://via.placeholder.com/150',
            timestamp: DateTime(2025, 1, 24, 12, 0, 0),
            reactions: [
              Reaction(
                emojiUrl: 'https://via.placeholder.com/150',
                profileName: 'John Doe',
                profilePicUrl: 'https://via.placeholder.com/150',
                timestamp: DateTime(2025, 1, 24, 12, 0, 0),
              ),
            ],
            zaps: [
              Zap(
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
