# Architecture decision records

An [architecture
decision](https://cloud.google.com/architecture/architecture-decision-records)
is a software design choice that evaluates:

-   a functional requirement (features).
-   a non-functional requirement (technologies, methodologies, libraries).

The purpose is to understand the reasons behind the current architecture, so
they can be carried-on or re-visited in the future.

## IDEA

### Problem Description

The goal is to create a Flutter widget that previews documents using a
structured hierarchy of sections and fields. Each section has distinct
properties like visibility rules, collapsibility, and styling based on a
heading level (1-9). Fields within sections are diverse in content types
(e.g., string, date, color) and must support different renderings and styling
based on type. Additional context such as sensitivity, GDPR compliance, data
retention policies, validation state, and history must also be communicated
at the field and section levels.

### Use Cases

1.  **Document Preview with Conditional Visibility**

    -   Section "Tax" becomes visible only if the field "user type" is set to
        "company."
    -   Section "Personal Details" is hidden until mandatory fields are
        populated.

2.  **Field-Level Rendering by Type**

    -   Date fields render with a date picker or formatted date display.
    -   Free text fields display a multiline text editor.
    -   Color fields display as swatches or a color picker.

3.  **Section Collapsibility**

    -   Collapse/expand sections to manage visibility in large documents.
    -   Default collapsed state for low-priority sections.

4.  **Sensitivity and Compliance Communication**

    -   Display sensitivity levels (e.g., “highly sensitive” for financial
        fields).
    -   Provide GDPR-related justifications for required fields (e.g., “needed
        for tax compliance”).
    -   Indicate data retention policies, such as “stored for 7 years.”

5.  **Editing Fields Inline**

    -   Click on a field to open an editor tailored to its type.
    -   Update fields with instant or deferred validation.

6.  **Review Features**

    -   Annotate sections with feedback like “All good” or “Need
        clarification.”
    -   Highlight invalid or missing fields for reviewers.

7.  **Field and Section History**

    -   View the edit history of a field (e.g., name changes, timestamped
        edits).
    -   Track the evolution of a section, including changes to its fields.

8.  **Help and Additional Information**
    -   Provide help icons at fields or sections with tooltips or modals for
        further explanation.

### Edge Cases

1.  Fields or sections have conflicting visibility rules, causing ambiguity
    in display logic.
2.  Fields remain unedited or invalid for extended periods, requiring error
    notifications.
3.  Sections have no visible fields due to conditional visibility or
    incomplete population.
4.  A mix of levels (e.g., h1 and h3) results in misaligned visual
    hierarchies.
5.  History tracking becomes unmanageable for frequently updated fields.
6.  Sections intended for reviewers do not collapse properly, cluttering the
    interface.
7.  Editing fields mid-review invalidates previously completed sections.

### Non-Goals

1.  **Document Generation**: The widget will not generate or export
    documents but only preview them.
2.  **Complex Workflow Management**: It will not handle approval workflows or
    state transitions.
3.  **Field-Level Business Logic**: Beyond visibility and rendering,
    field-specific validation or complex dependencies will not be part of this
    widget.
4.  **Storage Mechanisms**: The widget will not define how field history or
    other metadata is stored.
5.  **Dynamic Theme Management**: While section/field styling is supported,
    runtime theming or global style changes are out of scope.

### Key Specifications

-   **Styling**: Each section and field must have customizable fonts,
    colors, and spacing.
-   **Visibility Logic**: Rules must be flexible but clearly defined, e.g.,
    section A visible if field X = Y.
-   **Interactivity**: Clickable sections and fields must provide
    user-friendly inline editing.
-   **Compliance**: Display compliance metadata (e.g., GDPR-related
    justifications) for fields.
-   **Collapsibility**: Sections should default to collapsed or expanded
    based on importance.
-   **Responsiveness**: Ensure readability and usability across devices and
    orientations.
