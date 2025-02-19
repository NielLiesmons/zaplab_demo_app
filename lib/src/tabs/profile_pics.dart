import 'package:zaplab_design/zaplab_design.dart';
import '../formatting/section.dart';

class ProfilePicsTab extends StatelessWidget {
  const ProfilePicsTab({super.key});

  TabData tabData(BuildContext context) {
    final theme = AppTheme.of(context);

    return TabData(
      label: 'Profile Pics',
      icon: AppIcon.s16(theme.icons.characters.zap),
      content: Builder(
        builder: (context) {
          return AppContainer(
            padding: AppEdgeInsets.all(AppGapSize.s16),
            child: Column(
              children: [
                Section(
                  title: 'AppProfilePic',
                  description:
                      'Displays a circular profile picture with a slightly white border. Use s8 to s104 for specifying its size. Has a faalback icon and a skeleton loader built in.',
                  children: [
                    AppPanel(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              AppProfilePic.s12('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12(
                                'AppProfilePic.s12',
                              ),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePic.s16('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePic.s16'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePic.s20('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePic.s20'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePic.s24('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePic.s24'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePic.s28('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePic.s28'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePic.s32('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePic.s32'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePic.s38('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePic.s38'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePic.s40('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePic.s40'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePic.s48('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePic.s48'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePic.s56('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePic.s56'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePic.s64('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePic.s64'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePic.s72('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePic.s72'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePic.s80('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePic.s80'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePic.s96('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePic.s96'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePic.s104('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePic.s104'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Section(
                  title: 'AppProfilePicStory',
                  description:
                      'Adds a "blurple" colored border around the profile picture to signal that the user has a recent story. Use s38 to s104 for specifying its size.',
                  children: [
                    AppPanel(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              AppProfilePicStory.s38('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12(
                                'AppProfilePicStory.s38',
                              ),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePicStory.s40('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePicStory.s40'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePicStory.s48('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePicStory.s48'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePicStory.s56('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePicStory.s56'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePicStory.s64('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePicStory.s64'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePicStory.s72('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePicStory.s72'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePicStory.s80('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePicStory.s80'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePicStory.s96('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePicStory.s96'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePicStory.s104('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePicStory.s104'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Section(
                  title: 'AppProfilePicLive',
                  description:
                      'Adds a double "rouge" colored border around the profile picture to signal that the user is Live. Use s38 to s104 for specifying its size.',
                  children: [
                    AppPanel(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              AppProfilePicLive.s38('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12(
                                'AppProfilePicLive.s38',
                              ),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePicLive.s40('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePicLive.s40'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePicLive.s48('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePicLive.s48'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePicLive.s56('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePicLive.s56'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePicLive.s64('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePicLive.s64'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePicLive.s72('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePicLive.s72'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePicLive.s80('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePicLive.s80'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePicLive.s96('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePicLive.s96'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePicLive.s104('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePicLive.s104'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Section(
                  title: 'AppProfilePicSquare',
                  description:
                      'Displays a square profile picture with rounded edges. Ment to be used for Apps and Services. Use s48 to s104 for specifying its size.',
                  children: [
                    AppPanel(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              AppProfilePicSquare.s48('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12(
                                'AppProfilePicSquare.s48',
                              ),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePicSquare.s56('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePicSquare.s56'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePicSquare.s64('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePicSquare.s64'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePicSquare.s72('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePicSquare.s72'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePicSquare.s80('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePicSquare.s80'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePicSquare.s96('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePicSquare.s96'),
                            ],
                          ),
                          AppGap.s12(),
                          Row(
                            children: [
                              AppProfilePicSquare.s104('none', onTap: () {}),
                              AppGap.s16(),
                              AppText.med12('AppProfilePicSquare.s104'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Section(
                  title: 'AppProfileStack',
                  description: 'Displays a stack of Profile pictures.',
                  children: [
                    AppPanel(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppProfileStack(
                            onTap: () {},
                            profiles: [
                              Profile(
                                npub: 'npub1337',
                                profileName: 'Pip',
                                profilePicUrl:
                                    'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                              ),
                            ],
                          ),
                          AppGap.s16(),
                          AppProfileStack(
                            onTap: () {},
                            profiles: [
                              Profile(
                                npub: 'npub1337',
                                profileName: 'Pip',
                                profilePicUrl:
                                    'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                              ),
                              Profile(
                                npub: 'npub1337',
                                profileName: 'Pip',
                                profilePicUrl:
                                    'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                              ),
                              Profile(
                                npub: 'npub1337',
                                profileName: 'Pip',
                                profilePicUrl:
                                    'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                              ),
                            ],
                          ),
                          AppGap.s16(),
                          AppProfileStack(
                            onTap: () {},
                            profiles: [
                              Profile(
                                npub: 'npub1337',
                                profileName: 'Pip',
                                profilePicUrl:
                                    'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                              ),
                              Profile(
                                npub: 'npub1337',
                                profileName: 'Pip',
                                profilePicUrl:
                                    'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                              ),
                              Profile(
                                npub: 'npub1337',
                                profileName: 'Pip',
                                profilePicUrl:
                                    'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                              ),
                              Profile(
                                npub: 'npub1337',
                                profileName: 'Pip',
                                profilePicUrl:
                                    'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                              ),
                              Profile(
                                npub: 'npub1337',
                                profileName: 'Pip',
                                profilePicUrl:
                                    'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                              ),
                              Profile(
                                npub: 'npub1337',
                                profileName: 'Pip',
                                profilePicUrl:
                                    'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                              ),
                              Profile(
                                npub: 'npub1337',
                                profileName: 'Pip',
                                profilePicUrl:
                                    'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                              ),
                              Profile(
                                npub: 'npub1337',
                                profileName: 'Pip',
                                profilePicUrl:
                                    'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Section(
                  title: 'AppCommunityStack',
                  description: 'Displays a stack of Community pictures.',
                  children: [
                    AppPanel(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppCommunityStack(
                            onTap: () {},
                            communities: [
                              Community(
                                  ncommunity: 'ncommunity1blablabla',
                                  profilePicUrl:
                                      'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                                  communityName: 'fghj'),
                            ],
                          ),
                          AppGap.s16(),
                          AppCommunityStack(
                            onTap: () {},
                            communities: [
                              Community(
                                  ncommunity: 'ncommunity1blablabla',
                                  profilePicUrl:
                                      'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                                  communityName: 'fghj'),
                              Community(
                                  ncommunity: 'ncommunity1blablabla',
                                  profilePicUrl:
                                      'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                                  communityName: 'ijkl'),
                            ],
                          ),
                          AppGap.s16(),
                          AppCommunityStack(
                            onTap: () {},
                            communities: [
                              Community(
                                  ncommunity: 'ncommunity1blablabla',
                                  profilePicUrl:
                                      'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                                  communityName: 'fghj'),
                              Community(
                                  ncommunity: 'ncommunity1blablabla',
                                  profilePicUrl:
                                      'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                                  communityName: 'fghj'),
                              Community(
                                  ncommunity: 'ncommunity1blablabla',
                                  profilePicUrl:
                                      'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                                  communityName: 'fghj'),
                              Community(
                                  ncommunity: 'ncommunity1blablabla',
                                  profilePicUrl:
                                      'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                                  communityName: 'fghj'),
                              Community(
                                  ncommunity: 'ncommunity1blablabla',
                                  profilePicUrl:
                                      'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                                  communityName: 'fghj'),
                            ],
                          ),
                          AppGap.s16(),
                          AppCommunityStack(
                            onTap: () {},
                            communities: [
                              Community(
                                  ncommunity: 'ncommunity1blablabla',
                                  profilePicUrl:
                                      'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                                  communityName: 'fghj'),
                              Community(
                                  ncommunity: 'ncommunity1blablabla',
                                  profilePicUrl:
                                      'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                                  communityName: 'fghj'),
                              Community(
                                  ncommunity: 'ncommunity1blablabla',
                                  profilePicUrl:
                                      'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                                  communityName: 'fghj'),
                              Community(
                                  ncommunity: 'ncommunity1blablabla',
                                  profilePicUrl:
                                      'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                                  communityName: 'fghj'),
                              Community(
                                  ncommunity: 'ncommunity1blablabla',
                                  profilePicUrl:
                                      'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                                  communityName: 'fghj'),
                              Community(
                                  ncommunity: 'ncommunity1blablabla',
                                  profilePicUrl:
                                      'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                                  communityName: 'fghj'),
                              Community(
                                  ncommunity: 'ncommunity1blablabla',
                                  profilePicUrl:
                                      'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                                  communityName: 'fghj'),
                              Community(
                                  ncommunity: 'ncommunity1blablabla',
                                  profilePicUrl:
                                      'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                                  communityName: 'fghj'),
                              Community(
                                  ncommunity: 'ncommunity1blablabla',
                                  profilePicUrl:
                                      'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                                  communityName: 'fghj'),
                              Community(
                                  ncommunity: 'ncommunity1blablabla',
                                  profilePicUrl:
                                      'https://cdn.satellite.earth/c1049a551ab657593f334ff30afe7b8795affc52fe8e96dc08be901c0180d87a.png',
                                  communityName: 'fghj'),
                            ],
                          ),
                        ],
                      ),
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
