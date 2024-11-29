class CopperframePreviewField {
  String id;
  final List<String> options; //heading, description, doc-locator, styling
}

class CopperframePreviewSection {
  String id;
  final List<String> options; // heading
  int level;
  int y;
  String? enabler;
  List<CopperframePreviewField> fields;
}

class CopperframePreview {
  List<CopperframePreviewSection> sections;
}