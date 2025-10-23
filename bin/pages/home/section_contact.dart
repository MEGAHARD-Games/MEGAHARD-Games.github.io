import "package:techs_html_bindings/elements.dart";
import "package:techs_html_bindings/utils.dart";

List<Element> generateContactSection() {
  return [
    H2(children: [T("Contact")], autoLink: false),
    _generateContactIcon(
      medium: "E-Mail",
      url: "mailto:contact@megahard.games",
    ),
    _generateContactIcon(
      medium: "BlueSky",
      url: "https://bsky.app/profile/megahard.games",
    ),
    _generateContactIcon(
      medium: "Twitter",
      url: "https://twitter.com/megahard_games",
    ),
  ];
}

A _generateContactIcon({
  required String medium,
  required String url,
}) => A(
  href: url,
  children: [Image(src: "/assets/icons/${medium.clean()}.svg", alt: medium)],
  classes: ["icon"],
);
