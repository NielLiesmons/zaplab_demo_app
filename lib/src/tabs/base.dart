import 'package:zaplab_design/zaplab_design.dart';
import '../formatting/section.dart';

class BaseTab extends StatelessWidget {
  const BaseTab({super.key});

  TabData tabData(BuildContext context) {
    final theme = AppTheme.of(context);

    return TabData(
      label: 'Base',
      icon: AppIcon.s16(theme.icons.characters.zap, color: theme.colors.white),
      content: Builder(
        builder: (context) {
          final theme = AppTheme.of(context);

          return AppContainer(
            padding: const AppEdgeInsets.all(AppGapSize.s16),
            child: Column(
              children: [
                Section(
                  title: 'AppSkeletonLoader',
                  description:
                      'This is a widget that fills the widget it is placed in with a gradient animation.',
                  children: [
                    AppContainer(
                      height: 144,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: theme.colors.grey66,
                        borderRadius: theme.radius.asBorderRadius().rad16,
                      ),
                      child: const AppSkeletonLoader(),
                    ),
                  ],
                ),
                Section(
                  title: 'AppCheckBox',
                  description: 'This is a classic checkbox widget.',
                  children: [
                    AppPanel(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              AppCheckBox(
                                value: false,
                                onChanged: (value) {},
                              ),
                              const AppGap(AppGapSize.s12),
                              AppText.reg14(
                                'Set to false (default)',
                                color: theme.colors.white66,
                              ),
                            ],
                          ),
                          const AppGap(AppGapSize.s16),
                          Row(
                            children: [
                              AppCheckBox(
                                value: true,
                                onChanged: (value) {},
                              ),
                              const AppGap(AppGapSize.s12),
                              AppText.reg14(
                                'Set to true',
                                color: theme.colors.white66,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Section(
                  title: 'AppSelector',
                  description:
                      'This simple selector widget can be used to select an option or to switch between the Tabs displayed under it. You can specify the mode of the selector by setting the emphasized parameter to true or false. The content of each AppSelectorButton can be separately defined for when it is selected and when it is not.',
                  children: [
                    AppContainer(
                      width: double.infinity,
                      child: AppText.h3(
                        'DEFAULT MODE',
                        color: theme.colors.white33,
                      ),
                    ),
                    const AppGap(AppGapSize.s12),
                    AppSelector(
                      children: [
                        AppSelectorButton(
                          selectedContent: [AppText.med14('Option 1')],
                          unselectedContent: [
                            AppText.med14(
                              'Option 1',
                              color: theme.colors.white33,
                            )
                          ],
                          isSelected: true,
                          onTap: () {},
                        ),
                        AppSelectorButton(
                          selectedContent: [AppText.med14('Option 2')],
                          unselectedContent: [
                            AppText.med14(
                              'Option 2',
                              color: theme.colors.white33,
                            )
                          ],
                          isSelected: false,
                          onTap: () {},
                        ),
                        AppSelectorButton(
                          selectedContent: [AppText.med14('Option 3')],
                          unselectedContent: [
                            AppText.med14(
                              'Option 3',
                              color: theme.colors.white33,
                            )
                          ],
                          isSelected: false,
                          onTap: () {},
                        ),
                      ],
                      onChanged: (index) {},
                    ),
                    const AppGap(AppGapSize.s16),
                    AppContainer(
                      width: double.infinity,
                      child: AppText.h3(
                        'EMPHASIZED MODE',
                        color: theme.colors.white33,
                      ),
                    ),
                    const AppGap(AppGapSize.s12),
                    AppSelector(
                      emphasized: true,
                      children: [
                        AppSelectorButton(
                          selectedContent: [
                            AppIcon.s16(
                              theme.icons.characters.bell,
                              color: AppColorsData.dark().white,
                            ),
                            AppGap.s8(),
                            AppText.med14('21',
                                color: AppColorsData.dark().white),
                          ],
                          unselectedContent: [
                            AppIcon.s16(
                              theme.icons.characters.bell,
                              outlineColor: theme.colors.white33,
                              outlineThickness:
                                  LineThicknessData.normal().medium,
                            ),
                            AppGap.s8(),
                            AppText.med14('21', color: theme.colors.white33),
                          ],
                          isSelected: true,
                          onTap: () {},
                        ),
                        AppSelectorButton(
                          selectedContent: [
                            AppIcon.s16(
                              theme.icons.characters.reply,
                              outlineColor: AppColorsData.dark().white,
                              outlineThickness:
                                  LineThicknessData.normal().medium,
                            ),
                            AppGap.s8(),
                            AppText.med14(
                              '12',
                              color: AppColorsData.dark().white,
                            ),
                          ],
                          unselectedContent: [
                            AppIcon.s16(
                              theme.icons.characters.reply,
                              outlineColor: theme.colors.white33,
                              outlineThickness:
                                  LineThicknessData.normal().medium,
                            ),
                            AppGap.s8(),
                            AppText.med14('12', color: theme.colors.white33),
                          ],
                          isSelected: true,
                          onTap: () {},
                        ),
                        AppSelectorButton(
                          selectedContent: [
                            AppIcon.s18(
                              theme.icons.characters.zap,
                              color: AppColorsData.dark().white,
                            ),
                            AppGap.s8(),
                            AppText.med14('5',
                                color: AppColorsData.dark().white),
                          ],
                          unselectedContent: [
                            AppIcon.s18(
                              theme.icons.characters.zap,
                              outlineColor: theme.colors.white33,
                              outlineThickness:
                                  LineThicknessData.normal().medium,
                            ),
                            AppGap.s8(),
                            AppText.med14('5', color: theme.colors.white33),
                          ],
                          isSelected: true,
                          onTap: () {},
                        ),
                        AppSelectorButton(
                          selectedContent: [
                            AppIcon.s18(
                              theme.icons.characters.at,
                              outlineColor: AppColorsData.dark().white,
                              outlineThickness:
                                  LineThicknessData.normal().medium,
                            ),
                            AppGap.s8(),
                            AppText.med14('2',
                                color: AppColorsData.dark().white),
                          ],
                          unselectedContent: [
                            AppIcon.s18(
                              theme.icons.characters.at,
                              outlineColor: theme.colors.white33,
                              outlineThickness:
                                  LineThicknessData.normal().medium,
                            ),
                            AppGap.s8(),
                            AppText.med14('2', color: theme.colors.white33),
                          ],
                          isSelected: true,
                          onTap: () {},
                        ),
                        AppSelectorButton(
                          selectedContent: [
                            AppIcon.s18(
                              theme.icons.characters.emojiFill,
                              color: AppColorsData.dark().white,
                            ),
                            AppGap.s8(),
                            AppText.med14('2',
                                color: AppColorsData.dark().white),
                          ],
                          unselectedContent: [
                            AppIcon.s18(
                              theme.icons.characters.emojiLine,
                              outlineColor: theme.colors.white33,
                              outlineThickness:
                                  LineThicknessData.normal().medium,
                            ),
                            AppGap.s8(),
                            AppText.med14('2', color: theme.colors.white33),
                          ],
                          isSelected: true,
                          onTap: () {},
                        ),
                      ],
                      onChanged: (index) {},
                    ),
                  ],
                ),
                Section(
                  title: 'AppPanel',
                  description:
                      'This is an AppContainer with a predefined border radius, a default padding (that can be set to false) and a background color that auto-adjusts when used inside of an AppModal.',
                  children: [
                    AppPanel(
                      child: AppContainer(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: theme.colors.white8,
                          ),
                        ),
                        padding: const AppEdgeInsets.all(AppGapSize.s16),
                        child: Center(
                          child: AppText.reg14(
                            'Content',
                            color: theme.colors.white66,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Section(
                  title: 'AppSwitch',
                  description:
                      'This is a switch widget that can be used to toggle between two states.',
                  children: [
                    AppPanel(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText.med14(
                            'Grey Mode',
                            color: theme.colors.white,
                          ),
                          AppSwitch(
                            value: AppResponsiveTheme.of(context).colorMode ==
                                AppThemeColorMode.grey,
                            onChanged: (bool value) {
                              Future.microtask(() {
                                AppResponsiveTheme.of(context).setColorMode(
                                  value ? AppThemeColorMode.grey : null,
                                );
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Section(
                    title: 'AppCodeBlock',
                    description:
                        'This is a code block widget that can be used to display code in a readable format.',
                    children: [
                      const AppCodeBlock(
                        code: r'''{     
  kind: 7375,     
  content: "Thanks for the coffee",
  pubkey: "sender-pubkey",    
  tags: [         
     [ "amount", "1000", "msat" ],        
     [ "token", "cashuAeyJ0b2tlbiI6W3sicHJvb2ZzIjpbeyJpZCI6IjAwNDE0NmJkZjRhOWFmYWIiLCJhbW91bnQiOjEsInNlY3JldCI6IltcIlAyUEtcIix7XCJub25jZVwiOlwiYjI0NDNkZDRmMDQxNjgyYjRkMmEwMzkwNGQ5MDAyNjRiNzI1MzgwZTQ0YWM0MDk2Y2EwZWE2NDAzMGY0Mjc4OFwiLFwiZGF0YVwiOlwiZTlmYmNlZDNhNDJkY2Y1NTE0ODY2NTBjYzc1MmFiMzU0MzQ3ZGQ0MTNiMzA3NDg0ZTRmZDE4MThhYjUzZjk5MTExXCJ9XSIsIkMiOiIwMjYyOTM5ODRjODg1OTFiMzA2MzUxYjY5ZmNjODAxNGQ1NTc5MmYzMTQwYWEyZDlhYmQ0NGZhOWY0Y2Y2ZmQzZjEifV0sIm1pbnQiOiJodHRwczovL3N0YWJsZW51dC51bWludC5jYXNoIn1dLCJ1bml0Ijoic2F0In0="]         
     [ "u", "https://stablenut.umint.cash", ],
     [ "e", "<zapped-event-id>" ],
     [ "p", "e9fbced3a42dcf551486650cc752ab354347dd413b307484e4fd1818ab53f991" ]
  ] 
}''',
                        language: 'JSON',
                      ),
                    ]),
                Section(
                  title: 'AppCurrentProfileCard',
                  description:
                      'This is a card widget that displays the current profile of the user.',
                  children: [
                    AppCurrentProfileCard(
                      npub:
                          'npub149p5act9a5qm9p47elp8w8h3wpwn2d7s2xecw2ygnrxqp4wgsklq9g722q',
                      profileName: 'Zaplab',
                      profilePicUrl:
                          'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                    ),
                  ],
                ),
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
