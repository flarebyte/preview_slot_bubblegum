# preview\_slot\_bubblegum

![Experimental](https://img.shields.io/badge/status-experimental-blue)

> todo

todo

![Hero image for preview\_slot\_bubblegum](doc/preview_slot_bubblegum.jpeg)

Highlights:

-   todo

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

-   [Code Maintenance :wrench:](MAINTENANCE.md)
-   [Code Of Conduct](CODE_OF_CONDUCT.md)
-   [Contributing :busts\_in\_silhouette: :construction:](CONTRIBUTING.md)
-   [Architectural Decision Records :memo:](DECISIONS.md)
-   [Contributors
    :busts\_in\_silhouette:](https://github.com/flarebyte/preview_slot_bubblegum/graphs/contributors)
-   [Dependencies](https://github.com/flarebyte/preview_slot_bubblegum/network/dependencies)
-   [Glossary
    :book:](https://github.com/flarebyte/overview/blob/main/GLOSSARY.md)
-   [Software engineering principles
    :gem:](https://github.com/flarebyte/overview/blob/main/PRINCIPLES.md)
-   [Overview of Flarebyte.com ecosystem
    :factory:](https://github.com/flarebyte/overview)
-   [Dart dependencies](DEPENDENCIES.md)
-   [Usage](USAGE.md)
-   [Example](example/example.dart)

## Related

-   [Material Design 3](https://m3.material.io/)
-   [Flutter Documentation](https://docs.flutter.dev/)
