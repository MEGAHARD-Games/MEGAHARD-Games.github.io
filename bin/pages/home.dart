import "dart:io";

import "package:path/path.dart" as p;
import "package:ssg/components/footer.dart";
import "package:ssg/components/head.dart";
import "package:ssg/constants.dart";
import "package:techs_html_bindings/elements.dart";
import "package:techs_html_bindings/utils.dart";

import "home/section_about.dart";
import "home/section_contact.dart";
import "home/section_projects.dart";

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
          H1(
            id: "megahard",
            children: [
              Image(
                alt: "MEGAHARD: Making gamers rise up",
                src: "/images/MegahardLogo.svg",
                height: 261,
              ),
            ],
          ),
          P(
            children: [
              T("We're MEGAHARD, a game collective making games at gamejams that go hard (usually)."),
            ],
          ),
          ...generateProjectsSection(),
          ...generateAboutSection(),
          ...generateContactSection(),
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
