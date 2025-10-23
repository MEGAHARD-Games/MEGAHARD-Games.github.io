import "package:techs_html_bindings/elements.dart";

List<Element> generateProjectsSection() {
  return [
    H2(children: [T("Projects")], autoLink: false),
    _generateProject(
      title: "Fox Hunt",
      codename: "DWM_WARLOCK",
      description:
          "Your chickens have escaped, so you must catch them again! But watch out! There is a fox on the hunt for them as well!\n"
          "(Entry for the XP Study Association's 2024 GameJam)",
      link: "https://github.com/MEGAHARD-Games/DWM_WARLOCK",
    ),
  ];
}

Section _generateProject({
  required String title,
  required String codename,
  required String description,
  required String link,
}) => Section(
  classes: ["project"],
  children: [
    H3(
      autoLink: false,
      children: [
        T(title),
        Span(children: [T(codename)], classes: ["codename"]),
      ],
    ),
    P(children: [T(description.replaceAll("\n", "<br>"))]),
    P(
      classes: ["download"],
      children: [
        A(href: link, children: [T("Download →")]),
      ],
    ),
  ],
);
