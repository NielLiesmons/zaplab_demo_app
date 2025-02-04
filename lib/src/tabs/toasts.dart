import 'package:zaplab_design/zaplab_design.dart';
import '../formatting/section.dart';

class ToastsTab extends StatelessWidget {
  const ToastsTab({super.key});

  TabData tabData(BuildContext context) {
    final theme = AppTheme.of(context);

    return TabData(
      label: 'Toasts',
      icon: AppIcon.s16(theme.icons.characters.zap, color: theme.colors.white),
      content: Builder(
        builder: (context) {
          final theme = AppTheme.of(context);

          return AppContainer(
            padding: const AppEdgeInsets.all(AppGapSize.s16),
            child: Column(
              children: [
                Section(
                  title: 'AppToast',
                  description: 'Displays a toast message to the user.',
                  children: [
                    AppPanel(
                      child: AppSmallButton(
                        inactiveColor: theme.colors.white16,
                        content: [
                          AppText.med14('Show Toast',
                              color: theme.colors.white),
                        ],
                        onTap: () {
                          AppToast.show(
                            context,
                            children: [
                              const AppText.med14('Toast content goes here'),
                            ],
                            onTap: () {},
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Section(
                    title: 'AppToastMessage',
                    description: 'Toast for new chat messages that come in.',
                    children: [
                      AppPanel(
                        child: AppSmallButton(
                          inactiveColor: theme.colors.white16,
                          content: [
                            AppText.med14('Show Toast Message',
                                color: theme.colors.white),
                          ],
                          onTap: () {
                            AppToastMessage.show(
                              context,
                              message:
                                  'GM, your toast is ready! 🍞 Also, this is a long message that should be truncated',
                              profileName: 'Niel Liesmons',
                              profilePicUrl:
                                  'https://primal.b-cdn.net/media-cache?s=o&a=1&u=https%3A%2F%2Fcdn.satellite.earth%2F946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                              timestamp: DateTime.now(),
                              onTap: () {},
                            );
                          },
                        ),
                      ),
                    ]),
                Section(
                    title: 'AppToastInfo',
                    description: 'Toast for general information.',
                    children: [
                      AppPanel(
                        child: AppSmallButton(
                          inactiveColor: theme.colors.white16,
                          content: [
                            AppText.med14('Show Toast Info',
                                color: theme.colors.white),
                          ],
                          onTap: () {
                            AppToastInfo.show(
                              context,
                              message: 'Information goes here',
                              onTap: () {},
                            );
                          },
                        ),
                      ),
                    ]),
                Section(
                    title: 'AppToastAlert',
                    description:
                        'Toast for error messages or other types of alerts.',
                    children: [
                      AppPanel(
                        child: AppSmallButton(
                          inactiveColor: theme.colors.white16,
                          content: [
                            AppText.med14('Show Toast Alert',
                                color: theme.colors.white),
                          ],
                          onTap: () {
                            AppToastAlert.show(
                              context,
                              message: 'This is an alert message',
                              onTap: () {},
                            );
                          },
                        ),
                      ),
                    ]),
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
