import 'package:zaplab_design/zaplab_design.dart';

class LoadersTab extends StatelessWidget {
  const LoadersTab({super.key});

  TabData tabData(BuildContext context) {
    final theme = AppTheme.of(context);

    return TabData(
      label: 'Loaders',
      icon: AppIcon.s16(theme.icons.characters.zap),
      content: Builder(
        builder: (context) {
          final theme = AppTheme.of(context);

          return AppContainer(
            padding: const AppEdgeInsets.all(AppGapSize.s16),
            child: Column(
              children: [
                AppButton(
                  content: [
                    AppLoadingDots(),
                  ],
                  onTap: () {},
                  inactiveGradient: theme.colors.blurple66,
                  pressedGradient: theme.colors.blurple66,
                ),
                const AppGap.s16(),
                const AppLoadBar(progress: 0.72),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) => tabData(context).content;
}
