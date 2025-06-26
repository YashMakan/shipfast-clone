import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/extensions.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  static const header = 'max-w-7xl mx-auto px-8 py-5 flex items-center';
  static const headerLogo = 'w-28 md:w-32';
  static const headerNav = 'w-full flex items-center '
      'pl-12 md:pl-24 gap-4 md:gap-12';
  static const navLink = 'link link-hover';

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(tag: 'header', classes: header, children: [
      img(src: 'images/logo.png', alt: 'ShipFast logo', classes: headerLogo),
      [
        a(href: '#pricing', classes: navLink, [text('Pricing')]),
        a(href: '#demo', classes: '$navLink hidden sm:inline', [text('Demo')]),
        a(href: '#testimonials', classes: navLink, [text('Wall of love')]),
      ].div(headerNav),
    ]);
  }
}
