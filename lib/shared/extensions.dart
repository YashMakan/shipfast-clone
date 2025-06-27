// lib/extensions.dart
import 'package:jaspr/jaspr.dart' as jasper;

import 'components/figure.dart' as components;

extension JasperListExtension on List<jasper.Component> {
  jasper.Component div(String cls) => jasper.div(this, classes: cls);

  jasper.Component p([String? cls]) => jasper.p(this, classes: cls);

  jasper.Component span(String cls) => jasper.span(this, classes: cls);

  jasper.Component ul(String cls, {attributes}) => jasper.ul(this, classes: cls, attributes: attributes);

  jasper.Component li(String cls) => jasper.li(this, classes: cls);

  jasper.Component figure(String cls) => components.figure(this, classes: cls);
  jasper.Component blockquote(String cls) => jasper.blockquote(this, classes: cls);
}

extension JasperExtension on jasper.Component {
  jasper.Component div(String cls) => jasper.div([this], classes: cls);

  jasper.Component h2(String cls) => jasper.h2([this], classes: cls);

  jasper.Component p(String cls) => jasper.p([this], classes: cls);

  jasper.Component span(String cls) => jasper.span([this], classes: cls);

  jasper.Component li(String cls) => jasper.li([this], classes: cls);

  jasper.Component a(String cls, {required String href, String? target, attributes}) =>
      jasper.a(
          href: href,
          attributes: attributes,
          target: target != null
              ? jasper.Target.values.firstWhere((e) => e.value == target)
              : null,
          classes: cls,
          [this]);

}
