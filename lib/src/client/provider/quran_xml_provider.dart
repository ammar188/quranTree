import 'dart:io';
import 'package:xml/xml.dart';

import '../../models/error_enum.dart';

class QuranXmlProvider {
  final String source = "../utils/quran-uthmani.xml";

  readXml() {
    return _readXml(source);
  }

  _readXml(String resourcePath) {
    try {
      var file = File(resourcePath);
      // Create the Tanzil handler. This class will recieve
      // and handle the incoming SAX events.
      final xmlDocument = XmlDocument.parse(file.readAsStringSync());
      xmlDocument.children;
    } catch (e) {
      throw Exception(sdkErrorToMessage(Errors.INVALID_TANZIL_XML));
    }
  }
}
