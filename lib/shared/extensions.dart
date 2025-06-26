// lib/extensions.dart
import 'package:jaspr/jaspr.dart' as jasper;

extension JasperListExtension on List<jasper.Component> {
  jasper.Component div(String cls) => jasper.div(this, classes: cls);

  jasper.Component p(String cls) => jasper.p(this, classes: cls);

  jasper.Component span(String cls) => jasper.span(this, classes: cls);

  jasper.Component ul(String cls) => jasper.ul(this, classes: cls);

  jasper.Component li(String cls) => jasper.li(this, classes: cls);
}

extension JasperExtension on jasper.Component {
  jasper.Component div(String cls) => jasper.div([this], classes: cls);

  jasper.Component h2(String cls) => jasper.h2([this], classes: cls);

  jasper.Component p(String cls) => jasper.p([this], classes: cls);

  jasper.Component span(String cls) => jasper.span([this], classes: cls);

  jasper.Component li(String cls) => jasper.li([this], classes: cls);

  jasper.Component a(String cls, {required String href, String? target}) =>
      jasper.a(
          href: href,
          target: target != null
              ? jasper.Target.values.firstWhere((e) => e.value == target)
              : null,
          classes: cls,
          [this]);
}
