import "dart:io";

import "package:techs_html_bindings/elements.dart";

Head generateHead({
  String? title,
  String description = "Making Gamers Rise Up",
}) {
  String fullTitle = "Megahard";
  if (title != null) {
    fullTitle = "$title | $fullTitle";
  }

  return Head(
    title: fullTitle,
    metas: [
      Meta.name(name: "viewport", content: "width=device-width, initial-scale=1"),
      Meta.name(name: "og:title", content: fullTitle),
      Meta.name(name: "description", content: description),
      Meta.name(name: "og:description", content: description),
      Meta.name(name: "theme-color", content: "#50428F"),
      Meta.name(name: "og:image", content: "https://MEGAHARD-Games.github.io/images/iconv1.png"),
      Meta.httpEquiv(httpEquiv: "X-Clacks-Overhead", content: "GNU Terry Pratchett"),
    ],
    links: [
      Link.icon(
        type: "image/png",
        sizes: "32x32",
        href: "/favicon32.png",
      ),
      Link.icon(
        type: "image/png",
        sizes: "16x16",
        href: "/favicon16.png",
      ),
    ],
    styles: [
      Style(css: File("ssg/styles/autolink.css").readAsStringSync()),
      Style(css: File("ssg/styles/main-layout.css").readAsStringSync()),
      Style(css: File("ssg/styles/main-styling.css").readAsStringSync()),
    ],
  );
}
