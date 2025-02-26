import 'package:zaplab_design/zaplab_design.dart';

class AsciidocDemoTab extends StatelessWidget {
  const AsciidocDemoTab({super.key});

  TabData tabData(BuildContext context) {
    final theme = AppTheme.of(context);

    return TabData(
      label: 'AsciiDoc',
      icon: AppIcon.s16(theme.icons.characters.zap, color: theme.colors.white),
      content: Builder(
        builder: (context) {
          return AppContainer(
            child: AppAsciiDocRenderer(
              content: _testDocument,
              onResolveEvent: (identifier) async {
                // Simulate network delay
                await Future.delayed(const Duration(seconds: 1));
                return NostrEvent(
                  npub: 'npub1',
                  nevent: 'nevent1',
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
                  profilePicUrl: 'https://m.primal.net/IfSZ.jpg',
                );
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
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) => tabData(context).content;

  static const String _testDocument = '''
= Header 1
== Header 2
=== Header 3
==== Header 4
===== Header 5

[.lead]
This is a demo of the AsciiDoc parser and renderer. This lead paragraph is rendered in a different style.

It supports basic styling: *bold*, _italic_ or a combination of *_both_*. 
It can [.underline]#underline# text and [.line-through]#strike through# text.

It displays breaks with a horizontal line.

---
It knows how to handle Nostr-native events and profiles.
And, of course, it can also handle all the other common asciidoc elements.

www.zaplab.com

= Nostr Events
== Profiles
Whenever an nprofile or npub is mentioned it will be rendered inline. And if you ask me nostr:nprofile1qythwumn8ghj7anfw3hhytnwdaehgu339e3k7mf0qyghwumn8ghj7mn0wd68ytnhd9hx2tcqyprqcf0xst760qet2tglytfay2e3wmvh9asdehpjztkceyh0s5r9cp0f6fc looks quite handsome inline.

== Emoji
We are :90-percent: happy with how *custom emoji* are rendered.

== Hashtags
You can't have community media without #hashtags, am I right? 

== Content
Nostr events on the other hand would be rendered like this, by default, unless there's a more specific card available for that content type. nostr:nevent1qvzqqqqqqypzq3svyhng9ld8sv44950j957j9vchdktj7cxumsep9mvvjthc2pjuqyghwumn8ghj7mn0wd68ytnhd9hx2tcqypks0j49szydju70rs5rgstt7ulvwxjfa0lu8uxsuwrat02j8hzs2tctglt They always break the line. 

== Chat Messages
== Articles
== Videos


= Images

Images are rendered as full-width images with a caption.

.Captions go here
image::https://cdn.satellite.earth/4b4d7a2e54f8f5fe302316d926855b185f9942eb9fb3ed98ca516e372b7120fb.jpg[Alt-text]

.High Images are constrained in a golden ratio container
image::https://cdn.satellite.earth/ff84113892cd3869825d8d333f95690fb9db04989edfe3fb0fa94c804072c805.png[Full-width image]

.Skeleton loader for when the image is loading
image::https://cdn.satellite.earth/ff84113892cd3869825d8d333f95690fb9db04989edfe3fb0fa94c804.jpg[Alt-text]

= Admonitions
NOTE: This is a note admonition.
---
TIP: This is a tip admonition.
--- 
IMPORTANT: This is an important admonition.
---
WARNING: This is a warning admonition.
---
CAUTION: This is a caution admonition.
---

= Lists
== Unordered Lists
* List Item
** List Item
* List Item
** List Item
*** List Item  

---

== Ordered Lists
. List Item
.. List Item
.. List Item
. List Item
.. List Item
... List Item

---

= Code Blocks
Here's a code block:

[source,dart]
----
{     
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
}
----

= Interacting with Long Form Text
== Swipe it
Since we're letting users swipe on pretty much anything, it would just be silly to not let them have the same UX here.

== Reply
Swiping left lets you reply on this paragraph. If needed, you can of course adjust your selection before replying.

== Other actions
Swiping right opens a modal with other actions you can take on this paragraph. Similar to the modal(s) that show up when swiping right on replies, messages, posts, etc...


''';
}
