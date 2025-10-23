import "package:ssg/copy.dart";
import "package:ssg/log.dart";

import "pages/home.dart";

Future<void> main(List<String> arguments) async {
  log.info("Starting generation...");

  copy("images", "images");
  copy("ssg/copy/**", "");

  createHomePage();

  log.info("Done with generation!");
}
