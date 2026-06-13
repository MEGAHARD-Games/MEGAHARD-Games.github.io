import "package:techs_html_bindings/elements.dart";

Footer generateFooter() {
  return Footer(
    children: [
      P(
        children: [
          T("Website last updated on "),
          Time.now(),
        ],
      ),
    ],
  );
}
