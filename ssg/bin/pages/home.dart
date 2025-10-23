import "dart:io";

import "package:path/path.dart" as p;
import "package:ssg/components/footer.dart";
import "package:ssg/components/head.dart";
import "package:ssg/constants.dart";
import "package:techs_html_bindings/elements.dart";
import "package:techs_html_bindings/utils.dart";

void createHomePage() {
  final String html = HTML(
    lang: "en",
    head: generateHead(),
    body: Body(
      header: Header(
        children: [
          Nav(
            children: [
              UnorderedList(
                items: [
                  generateNavItem("Projects"),
                  generateNavItem("About"),
                  generateNavItem("Contact"),
                ],
              ),
            ],
          ),
        ],
      ),
      main: Main(
        children: [
          H1(children: [T("Megahard")]),
          P(
            classes: ["subtitle"],
            children: [T("Making Gamers Rise Up™")],
          ),
          P(
            children: [
              T("We're MEGAHARD, a game collective making games at gamejams that go hard (usually)."),
            ],
          ),
          H2(children: [T("Projects")]),
          Section(
            children: [
              H3(
                children: [
                  T("Fox Hunt"),
                  Span(children: [T("DWM_WARLOCK")], classes: ["codename"]),
                ],
              ),
              P(children: [T("Your chickens have escaped, so you must catch them again! But watch out! There is a fox on the hunt for them as well! (Entry for the XP Study Association's 2024 GameJam)")]),
              A(href: "https://github.com/MEGAHARD-Games/DWM_WARLOCK", children: [T("Download")]),
            ],
          ),
          H2(children: [T("About")]),
          P(
            children: [
              T.multiline([
                T("Line1"),
                T("Line2"),
              ]),
            ],
          ),
          H2(children: [T("Contact")]),
          P(
            children: [
              A(href: "mailto:contact@megahard.games", children: [T("E-Mail")]),
            ],
          ),
          P(
            children: [
              A(href: "https://bsky.app/profile/megahard.games", children: [T("BlueSky")]),
            ],
          ),
          P(
            children: [
              A(href: "https://twitter.com/megahard_games", children: [T("Twitter")]),
            ],
          ),
        ],
      ),
      footer: generateFooter(),
    ),
  ).build();

  File(p.join(dirBuild.path, "index.html")).writeAsStringSync(html);
}

ListItem generateNavItem(String label) => ListItem(
  children: [
    A(href: "#${label.clean()}", children: [T(label)]),
  ],
);
