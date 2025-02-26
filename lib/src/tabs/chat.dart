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
          return Column(
            children: [
              AppText.reg14('Chat'),
            ],
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) => tabData(context).content;
}
