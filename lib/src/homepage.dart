import 'package:zaplab_design/zaplab_design.dart';
import 'dart:ui';
import 'dart:io';

import 'tabs/base.dart';
import 'tabs/buttons.dart';
import 'tabs/chat.dart';
import 'tabs/loaders.dart';
import 'tabs/profile_pics.dart';
import 'tabs/asciidoc_demo.dart';
import 'tabs/apps.dart';
import 'tabs/posts.dart';
import 'tabs/toasts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return Stack(
      children: [
        AppScaffold(
          body: SingleChildScrollView(
            child: AppContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const AppGap.s72(),
                  AppContainer(
                    child: Column(
                      children: [
                        AppProfilePicSquare.s104(
                            'https://cdn.satellite.earth/da67840aae6720f5e5fb9e4c8ce25a85f6d8cbf22f4a04fd44babd58a9badfc6.png'),
                        const AppGap.s16(),
                        const AppText.h1('Zaplab'),
                        const AppGap.s8(),
                        AppText.med16(
                          'Demo App',
                          color: theme.colors.white66,
                        ),
                        const AppGap.s8(),
                      ],
                    ),
                  ),
                  const AppGap.s16(),
                  AppTabView(
                    controller: AppTabController(length: 20),
                    tabs: [
                      const BaseTab().tabData(context),
                      const AppsTab().tabData(context),
                      const ChatTab().tabData(context),
                      const ButtonsTab().tabData(context),
                      const LoadersTab().tabData(context),
                      const ProfilePicsTab().tabData(context),
                      const PostsTab().tabData(context),
                      const AsciidocDemoTab().tabData(context),
                      const ToastsTab().tabData(context),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 24, sigmaY: 24),
              child: AppContainer(
                height: Platform.isIOS || Platform.isAndroid
                    ? MediaQuery.of(context).padding.top
                    : 24,
                decoration: BoxDecoration(
                  color: theme.colors.black66,
                  border: Border(
                    bottom: BorderSide(
                      color: theme.colors.white16,
                      width: LineThicknessData.normal().thin,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 24, sigmaY: 24),
              child: AppContainer(
                height: Platform.isIOS || Platform.isAndroid
                    ? MediaQuery.of(context).padding.bottom
                    : 0,
                decoration: BoxDecoration(
                  color: theme.colors.black66,
                  border: Border(
                    top: BorderSide(
                      color: theme.colors.white16,
                      width: LineThicknessData.normal().thin,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
