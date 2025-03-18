import 'package:zaplab_design/zaplab_design.dart';

class ButtonsTab extends StatelessWidget {
  const ButtonsTab({super.key});

  TabData tabData(BuildContext context) {
    final theme = AppTheme.of(context);

    return TabData(
      label: 'Buttons',
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
                    AppText.med16(
                      'Open Toast Message',
                      color: AppColorsData.dark().white,
                    ),
                  ],
                  onTap: () {
                    AppToastMessage.show(
                      context,
                      message:
                          'GM, your toast is ready! 🍞  Also, this is a long message that should be truncated',
                      profileName: 'Niel Liesmons',
                      profilePicUrl:
                          'https://primal.b-cdn.net/media-cache?s=o&a=1&u=https%3A%2F%2Fcdn.satellite.earth%2F946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                      timestamp: DateTime.now(),
                      onTap: () {},
                    );
                  },
                  inactiveGradient: theme.colors.blurple,
                  pressedGradient: theme.colors.blurple,
                ),
                const AppGap.s16(),
                AppButton(
                  content: [
                    AppText.med16(
                      'Open Modal',
                      color: AppColorsData.dark().white,
                    ),
                  ],
                  onTap: () {
                    AppModal.show(
                      context,
                      profilePicUrl: 'fghj',
                      title: 'Modal Title',
                      description: 'Description of the Modal',
                      children: [
                        Column(
                          children: [
                            const AppGap.s16(),
                            ...List.generate(
                              50,
                              (index) => Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  AppContainer(
                                    height: theme.sizes.s48,
                                    decoration: BoxDecoration(
                                      color: theme.colors.black33,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    alignment: Alignment.center,
                                    child: AppText.reg14(
                                      'Item ${index + 1}',
                                      color: theme.colors.white66,
                                    ),
                                  ),
                                  if (index < 49) const AppGap.s12(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                      bottomBar: Row(
                        children: [
                          AppButton(
                            content: [
                              AppText.med16(
                                'Cancel',
                                color: theme.colors.white66,
                              ),
                            ],
                            onTap: () => Navigator.of(context).pop(),
                            inactiveColor: theme.colors.black33,
                            pressedColor: theme.colors.black33,
                          ),
                          const AppGap.s16(),
                          Expanded(
                            child: AppButton(
                              content: [
                                AppText.med16(
                                  'Confirm',
                                  color: AppColorsData.dark().white,
                                ),
                              ],
                              onTap: () {},
                              inactiveGradient: theme.colors.blurple,
                              pressedGradient: theme.colors.blurple,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  inactiveGradient: theme.colors.blurple,
                  pressedGradient: theme.colors.blurple,
                ),
                const AppGap.s16(),
                AppButton(
                  content: [
                    AppIcon.s16(
                      theme.icons.characters.zap,
                      color: AppColorsData.dark().white,
                    ),
                    AppGap.s8(),
                    AppText.med16(
                      'Zap',
                      color: AppColorsData.dark().white,
                    ),
                  ],
                  onTap: () async {
                    final result = await AppZapModal.show(
                      context,
                      profileName: 'Zaplab',
                      contentType: 'Repo',
                      onSearchProfiles: (query) async {
                        return [
                          Profile(
                            npub: 'npub1hjghklk',
                            profileName: 'Zaplab',
                            profilePicUrl:
                                'https://cdn.satellite.earth/da67840aae6720f5e5fb9e4c8ce25a85f6d8cbf22f4a04fd44babd58a9badfc6.png',
                          ),
                        ];
                      },
                      onSearchEmojis: (query) async {
                        return [
                          Emoji(
                            emojiUrl:
                                'https://cdn.satellite.earth/da67840aae6720f5e5fb9e4c8ce25a85f6d8cbf22f4a04fd44babd58a9badfc6.png',
                            emojiName: '👍',
                          ),
                        ];
                      },
                      profileImageUrl:
                          'https://cdn.satellite.earth/da67840aae6720f5e5fb9e4c8ce25a85f6d8cbf22f4a04fd44babd58a9badfc6.png',
                      otherZaps: [
                        (
                          amount: 21,
                          profileImageUrl:
                              'https://primal.b-cdn.net/media-cache?s=o&a=1&u=https%3A%2F%2Fcdn.satellite.earth%2F946822b1ea72fd3710806c07420d6f7e7d4a7646b2002e6cc969bcf1feaa1009.png',
                        ),
                        (
                          amount: 543,
                          profileImageUrl:
                              'https://primal.b-cdn.net/media-cache?s=o&a=1&u=https%3A%2F%2Fimage.nostr.build%2Fba781633731cd33bd20f58bbca208ae87db3f87c8f2256e23e4a8df543617c6c.png',
                        ),
                        (
                          amount: 17000,
                          profileImageUrl:
                              'https://primal.b-cdn.net/media-cache?s=o&a=1&u=https%3A%2F%2Fm.primal.net%2FIfSZ.jpg',
                        ),
                        (
                          amount: 150000,
                          profileImageUrl:
                              'https://primal.b-cdn.net/media-cache?s=o&a=1&u=https%3A%2F%2Fnostr.build%2Fi%2Fnostr.build_1732d9a6cd9614c6c4ac3b8f0ee4a8242e9da448e2aacb82e7681d9d0bc36568.jpg',
                        ),
                      ],
                      recentAmounts: [
                        100,
                        2000,
                        1000,
                        21,
                        555,
                        100000,
                        21,
                        1000000
                      ],
                    );
                    if (result != null) {
                      print(
                          'Zap amount: ${result.amount}, Message: ${result.message}');
                    }
                  },
                  inactiveGradient: theme.colors.blurple,
                  pressedGradient: theme.colors.blurple,
                ),
                const AppGap.s16(),
                AppButton(
                  content: [
                    AppText.med16(
                      'Input Modal',
                      color: AppColorsData.dark().white,
                    ),
                  ],
                  onTap: () {
                    AppInputModal.show(
                      context,
                      header: Row(children: [
                        const AppGap.s12(),
                        Column(children: [
                          AppText.reg14(
                            'Header Text',
                            color: theme.colors.white66,
                          ),
                          const AppGap.s8(),
                        ])
                      ]),
                      inputField: AppInputField(
                        placeholder: [
                          AppText.reg16(
                            'Type a message...',
                            color: theme.colors.white33,
                          ),
                        ],
                        onChanged: (value) {
                          // Handle text changes
                        },
                        onSearchProfiles: (query) async {
                          return [
                            Profile(
                              npub: 'npub1hjghklk',
                              profileName: 'Franzap',
                              profilePicUrl:
                                  'https://primal.b-cdn.net/media-cache?s=m&a=1&u=https%3A%2F%2Fnostr.build%2Fi%2Fnostr.build_1732d9a6cd9614c6c4ac3b8f0ee4a8242e9da448e2aacb82e7681d9d0bc36568.jpg',
                            ),
                            Profile(
                              npub: 'npub1hjghkjhfabez',
                              profileName: 'Pip',
                              profilePicUrl: 'https://m.primal.net/IfSZ.jpg',
                            ),
                            Profile(
                              npub: 'npub1hjjkzerhgnotekpo',
                              profileName: 'Verbricha',
                              profilePicUrl:
                                  'https://primal.b-cdn.net/media-cache?s=m&a=1&u=https%3A%2F%2Fnostr.download%2F1aba957814cac9c324c54d94e0ba6606dc50af17f7c08654e9b9f139a9720d6d.jpeg',
                            ),
                            Profile(
                              npub: 'npub1hoshbjdnplrplouy',
                              profileName: 'Zaplab',
                              profilePicUrl:
                                  'https://cdn.satellite.earth/da67840aae6720f5e5fb9e4c8ce25a85f6d8cbf22f4a04fd44babd58a9badfc6.png',
                            ),
                            Profile(
                              npub: 'npub1hjghkyrtflnlvdsjhlk',
                              profileName: 'Zaplab',
                              profilePicUrl:
                                  'https://cdn.satellite.earth/da67840aae6720f5e5fb9e4c8ce25a85f6d8cbf22f4a04fd44babd58a9badfc6.png',
                            ),
                          ];
                        },
                        onSearchEmojis: (query) async {
                          return [
                            Emoji(
                              emojiUrl:
                                  'https://cdn.satellite.earth/60a5e73bfa6dfd35bd0b144f38f6ed2aaab0606b2bd68b623f419ae0709fa10a.png',
                              emojiName: '110%',
                            ),
                            Emoji(
                              emojiUrl:
                                  'https://cdn.satellite.earth/cbcd50ec769b65c03bc780f0b2d0967f893d10a29f7666d7df8f2d7614d493d4.png',
                              emojiName: 'nostr',
                            ),
                            Emoji(
                              emojiUrl:
                                  'https://image.nostr.build/cf022820e693289374dbd3fe4f8cf955ba88d6174b491b16af24d51d8e0c034e.gif',
                              emojiName: 'eyes',
                            ),
                            Emoji(
                              emojiUrl:
                                  'https://image.nostr.build/dac316ba92036e63b893e309c2414cdd0e1bcb18aef8e4e657a588a1a2ff8e4a.gif',
                              emojiName: 'mind-blown',
                            ),
                          ];
                        },
                      ),
                    );
                  },
                  inactiveGradient: theme.colors.blurple,
                  pressedGradient: theme.colors.blurple,
                ),
                const AppGap.s16(),
                AppButton(
                  content: [
                    AppIcon.s16(
                      theme.icons.characters.crown,
                      gradient: theme.colors.gold,
                    ),
                    AppGap.s12(),
                    AppText.med16(
                      'You are an Admin',
                      color: AppColorsData.dark().white,
                    ),
                  ],
                  onTap: () {},
                  inactiveGradient: theme.colors.blurple,
                  pressedGradient: theme.colors.blurple,
                ),
                const AppGap.s16(),
                AppButton(
                  content: [
                    AppIcon.s14(
                      theme.icons.characters.check,
                      outlineColor: AppColorsData.dark().white,
                      outlineThickness: LineThicknessData.normal().thick,
                    ),
                    AppGap.s12(),
                    AppText.med16(
                      'Added',
                      color: AppColorsData.dark().white,
                    ),
                    AppGap.s12(),
                    AppText.med16(
                      '6',
                      color: AppColorsData.dark().white66,
                    ),
                  ],
                  onTap: () {},
                  inactiveGradient: theme.colors.blurple,
                  pressedGradient: theme.colors.blurple,
                ),
                const AppGap.s16(),
                AppButton(
                  content: [
                    AppText.med14(
                      'Next',
                      color: AppColorsData.dark().white66,
                    ),
                  ],
                  onTap: () {},
                  inactiveGradient: AppColorsData.dark().blurple66,
                  pressedGradient: AppColorsData.dark().blurple66,
                ),
                const AppGap.s16(),
                AppButton(
                  content: [
                    AppText.med14(
                      'Report',
                      gradient: AppColorsData.dark().rouge,
                    ),
                  ],
                  onTap: () {},
                  inactiveColor: theme.colors.grey66,
                  pressedColor: theme.colors.grey66,
                ),
                const AppGap.s16(),
              ],
            ),
          );
        },
      ),
      settingsContent: const AppContainer(
        padding: AppEdgeInsets.all(AppGapSize.s32),
        child: AppText.reg14('Settings Content'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => tabData(context).content;
}
