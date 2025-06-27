import 'package:jaspr/jaspr.dart';

Component figcaption(List<Component> children,
    {String? cite,
      Key? key,
      String? id,
      String? classes,
      Styles? styles,
      Map<String, String>? attributes,
      Map<String, EventCallback>? events}) {
  return DomComponent(
    tag: 'figcaption',
    key: key,
    id: id,
    classes: classes,
    styles: styles,
    attributes: {
      ...?attributes,
      if (cite != null) 'cite': cite,
    },
    events: events,
    children: children,
  );
}