import "package:techs_html_bindings/elements.dart";

List<Element> generateAboutSection() {
  return [
    H2(children: [T("About")], autoLink: false),
    P(
      children: [
        T.multiline([
          T("Line1"),
          T("Line2"),
        ]),
      ],
    ),
  ];
}
