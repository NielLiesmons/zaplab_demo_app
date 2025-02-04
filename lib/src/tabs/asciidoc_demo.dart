import 'package:zaplab_design/zaplab_design.dart';

class AsciidocDemoTab extends StatelessWidget {
  const AsciidocDemoTab({super.key});

  TabData tabData(BuildContext context) {
    final theme = AppTheme.of(context);
    return TabData(
      label: 'AsciiDoc',
      icon: AppIcon.s18(
        theme.icons.characters.zap,
        outlineColor: theme.colors.white66,
      ),
      content: this,
    );
  }

  static const String _testDocument = '''
= Header 1
== Header 2
=== Header 3
==== Header 4
===== Header 5
This is a demo of the AsciiDoc parser and renderer.

It supports basic styling: *bold*, _italic_ or a combination of *_both_*. 
It can  [.underline]#underline# text and [.line-through]#strike through# text.

It displays breaks with a horizontal line.

---

And it can also handle the following things. 

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

''';

  @override
  Widget build(BuildContext context) {
    final parser = AsciiDocParser();
    final elements = parser.parse(_testDocument);

    return AppContainer(
      width: double.infinity,
      padding: const AppEdgeInsets.all(AppGapSize.s16),
      child: SingleChildScrollView(
        child: AsciiDocRenderer(elements: elements),
      ),
    );
  }
}
