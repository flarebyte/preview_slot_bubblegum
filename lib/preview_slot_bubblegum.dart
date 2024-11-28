/// A Flutter widget for previewing structured documents with sections and fields.
/// 
/// Features:
/// - **Sections**: Each section has a heading level (1-9), customizable styling, and collapsibility.
///   Visibility can depend on conditional rules (e.g., field values).
/// - **Fields**: Render fields with type-specific views (e.g., date picker, color swatch).
///   Fields support inline editing, validation, and history tracking.
/// - **Metadata**: Display sensitivity, GDPR justification, retention policies, and validation state
///   at both section and field levels.
/// - **Review Tools**: Annotate sections, highlight missing/invalid fields, and provide feedback.
/// - **Interactivity**: Collapsible sections, clickable fields, and help buttons for additional info.
/// - **Non-Goals**: The widget focuses on previewing; it does not handle document generation,
///   workflows, or storage mechanisms.
/// 
library preview_slot_bubblegum;

export 'src/preview-model.dart';