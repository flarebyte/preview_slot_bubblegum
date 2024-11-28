# preview_slot_bubblegum

![Experimental](https://img.shields.io/badge/status-experimental-blue)

> Document Preview, Sweetened and Simplified

A Flutter widget for previewing structured documents with customizable sections and fields, supporting conditional visibility, interactivity, and metadata display.

![Hero image for preview_slot_bubblegum](doc/preview_slot_bubblegum.jpeg)

Highlights:

* Supports hierarchical sections with customizable styling and collapsibility.
* Renders fields with type-specific views.
* Displays metadata such as sensitivity, GDPR justification, and retention policies.
* Enables review workflows with annotations, feedback, and field history tracking.
* Integrates interactive help buttons and conditional visibility logic for sections.



A few examples:

BubblegumMessageSlot Example:
```dart
BubblegumMessageSlot(
  slot: _infoSlot,
  messages: loopData.slotMessages.current().value,
  options: BubblegumMessageSlotOptsBuilder()
    .setIconCollection(IconRepo.iconCollection)
    .setGroupMessagesByLevel(true)
    .setOnTapHint('Fix the content')
    .setOnMessageTap((message) => setState(() {
      clickCounter++;
    }))
    .build(),
)

```

## Documentation and links

* [Code Maintenance :wrench:](MAINTENANCE.md)
* [Code Of Conduct](CODE_OF_CONDUCT.md)
* [Contributing :busts_in_silhouette: :construction:](CONTRIBUTING.md)
* [Architectural Decision Records :memo:](DECISIONS.md)
* [Contributors :busts_in_silhouette:](https://github.com/flarebyte/preview_slot_bubblegum/graphs/contributors)
* [Dependencies](https://github.com/flarebyte/preview_slot_bubblegum/network/dependencies)
* [Glossary :book:](https://github.com/flarebyte/overview/blob/main/GLOSSARY.md)
* [Software engineering principles :gem:](https://github.com/flarebyte/overview/blob/main/PRINCIPLES.md)
* [Overview of Flarebyte.com ecosystem :factory:](https://github.com/flarebyte/overview)
* [Dart dependencies](DEPENDENCIES.md)
* [Usage](USAGE.md)
* [Example](example/example.dart)

## Related

* [Material Design 3](https://m3.material.io/)
* [Flutter Documentation](https://docs.flutter.dev/)
