import 'package:jaspr/jaspr.dart';

typedef Widget = Component;

abstract class StatelessWidget extends StatelessComponent {
  const StatelessWidget({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield render(context);
  }

  Component render(BuildContext context);
}

abstract class StatefulWidget extends StatefulComponent {
  const StatefulWidget({super.key});

  @override
  State<StatefulWidget> createState();
}

abstract class WidgetState<T extends StatefulWidget> extends State<T> {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield render(context);
  }

  /// Subclasses should implement this instead of `build`
  Component render(BuildContext context);
}

class Group extends StatelessComponent {
  final List<Component> children;

  Group({required this.children});

  @override
  Iterable<Component> build(BuildContext context) {
    return children;
  }
}

class Header extends StatelessWidget {
  final String? style;
  final String? cls;
  final Component? child;

  const Header({super.key, this.style, this.cls, this.child});

  @override
  Component render(BuildContext context) {
    return DomComponent(
        tag: 'header', classes: '${style ?? ''} ${cls ?? ''}', child: child);
  }
}

class Footer extends StatelessWidget {
  final String? style;
  final String? cls;
  final Component? child;

  const Footer({super.key, this.style, this.cls, this.child});

  @override
  Component render(BuildContext context) {
    return DomComponent(
        tag: 'footer', classes: '${style ?? ''} ${cls ?? ''}', child: child);
  }
}

class Div extends StatelessWidget {
  final String? style;
  final String? cls;
  final Component? child;

  const Div({super.key, this.style, this.cls, this.child});

  @override
  Component render(BuildContext context) {
    return DomComponent(
        tag: 'div', classes: '${style ?? ''} ${cls ?? ''}', child: child);
  }
}

class Image extends StatelessWidget {
  final String src;
  final String? alt;
  final String? cls;
  final String? style;

  const Image({super.key, required this.src, this.alt, this.cls, this.style});

  @override
  Component render(BuildContext context) {
    return DomComponent(
        tag: 'img',
        classes: '${style ?? ''} ${cls ?? ''}',
        attributes: {'src': src, if (alt != null) 'alt': alt!});
  }
}

class Link extends StatelessWidget {
  final String href;
  final String? cls;
  final String? style;
  final Target? target;
  final Map<String, String>? attributes;
  final Component? child;

  const Link(
      {super.key,
      required this.href,
      this.cls,
      this.style,
      this.child,
      this.target,
      this.attributes});

  @override
  Component render(BuildContext context) {
    return DomComponent(
        tag: 'a',
        classes: '${style ?? ''} ${cls ?? ''}',
        attributes: {
          ...?attributes,
          'href': href,
          if (target != null) 'target': target!.value,
        },
        child: child);
  }
}

class Span extends StatelessWidget {
  final String? style;
  final String? cls;
  final Component? child;
  Map<String, EventCallback>? events;

  Span({super.key, this.style, this.cls, this.child, this.events});

  @override
  Component render(BuildContext context) {
    return DomComponent(
        tag: 'span',
        classes: '${style ?? ''} ${cls ?? ''}',
        child: child,
        events: events);
  }
}

class Button extends StatelessWidget {
  final String? style;
  final String? cls;
  final Component? child;
  final Map<String, String>? attributes;
  final ButtonType? type;

  const Button(
      {super.key,
      this.style,
      this.cls,
      this.child,
      this.attributes,
      this.type});

  @override
  Component render(BuildContext context) {
    return DomComponent(
        tag: 'button',
        classes: '${style ?? ''} ${cls ?? ''}',
        attributes: {
          ...?attributes,
        },
        child: child);
  }
}

class H1 extends StatelessWidget {
  final String? style;
  final String? cls;
  final Component? child;

  const H1({super.key, this.style, this.cls, this.child});

  @override
  Component render(BuildContext context) {
    return DomComponent(
        tag: 'h1', classes: '${style ?? ''} ${cls ?? ''}', child: child);
  }
}

class Section extends StatelessWidget {
  final String? style;
  final String? cls;
  final Component? child;
  final String? id;

  const Section({super.key, this.style, this.cls, this.child, this.id});

  @override
  Component render(BuildContext context) {
    return DomComponent(
        id: id,
        tag: 'section',
        classes: '${style ?? ''} ${cls ?? ''}',
        child: child);
  }
}

class Paragraph extends StatelessWidget {
  final String? style;
  final String? cls;
  final Component? child;

  const Paragraph({super.key, this.style, this.cls, this.child});

  @override
  Component render(BuildContext context) {
    return DomComponent(
        tag: 'p', classes: '${style ?? ''} ${cls ?? ''}', child: child);
  }
}

class H2 extends StatelessWidget {
  final String? style;
  final String? cls;
  final Component? child;

  const H2({super.key, this.style, this.cls, this.child});

  @override
  Component render(BuildContext context) {
    return DomComponent(
        tag: 'h2', classes: '${style ?? ''} ${cls ?? ''}', child: child);
  }
}

class UnorderedList extends StatelessWidget {
  final String? style;
  final String? cls;
  final List<Component>? children;
  final Map<String, String>? attributes;

  const UnorderedList(
      {super.key, this.style, this.cls, this.children, this.attributes});

  @override
  Component render(BuildContext context) {
    return DomComponent(
        tag: 'ul',
        classes: '${style ?? ''} ${cls ?? ''}',
        attributes: {
          ...?attributes,
        },
        children: children);
  }
}

class ListItem extends StatelessWidget {
  final String? style;
  final String? cls;
  final Component? child;

  const ListItem({super.key, this.style, this.cls, this.child});

  @override
  Component render(BuildContext context) {
    return DomComponent(
        tag: 'li', classes: '${style ?? ''} ${cls ?? ''}', child: child);
  }
}

class BlockQuote extends StatelessWidget {
  final String? style;
  final String? cls;
  final Component? child;

  const BlockQuote({super.key, this.style, this.cls, this.child});

  @override
  Component render(BuildContext context) {
    return DomComponent(
        tag: 'blockquote',
        classes: '${style ?? ''} ${cls ?? ''}',
        child: child);
  }
}

class Figcaption extends StatelessWidget {
  final String? style;
  final String? cls;
  final Component? child;

  const Figcaption({super.key, this.style, this.cls, this.child});

  @override
  Component render(BuildContext context) {
    return DomComponent(
        tag: 'figcaption',
        classes: '${style ?? ''} ${cls ?? ''}',
        child: child);
  }
}

class Figure extends StatelessWidget {
  final String? style;
  final String? cls;
  final Component? child;

  const Figure({super.key, this.style, this.cls, this.child});

  @override
  Component render(BuildContext context) {
    return DomComponent(
        tag: 'figure', classes: '${style ?? ''} ${cls ?? ''}', child: child);
  }
}

class Video extends StatelessWidget {
  const Video(
      {super.key,
      required this.source,
      this.width,
      this.height,
      this.defaultText = 'Video cannot be played.',
      this.showControls = true,
      this.autoplay = false,
      this.loop = false,
      this.muted = false,
      this.poster,
      this.style,
      this.attributes,
      this.preload,
      this.cls});

  final Uri source;
  final int? width;
  final int? height;
  final String? defaultText;
  final bool showControls;
  final bool autoplay;
  final bool loop;
  final bool muted;
  final Uri? poster;
  final String? cls;
  final String? style;
  final Map<String, String>? attributes;
  final Preload? preload;

  @override
  Component render(BuildContext context) {
    return video(
      src: source.toString(),
      width: width,
      height: height,
      autoplay: autoplay,
      loop: loop,
      muted: muted,
      classes: '${style ?? ''} ${cls ?? ''}',
      controls: showControls,
      attributes: attributes,
      preload: preload,
      poster: poster?.toString(),
      [if (defaultText != null) text(defaultText!)],
    );
  }
}
