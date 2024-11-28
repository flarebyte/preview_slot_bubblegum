class CopperframePreviewField {
  String id;
  final List<String> options; //heading, description, doc-locator, styling
}

class CopperframePreviewZone {
  String id;
  final List<String> options; // heading, enabler, coordinate-x, coordinate-y, level
  List<CopperframePreviewField> fields;
}

class CopperframePreview {
  List<CopperframePreviewZone> zones;
}