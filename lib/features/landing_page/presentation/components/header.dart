import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/utils.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({super.key});

  static const headerStyle = 'max-w-7xl mx-auto px-8 py-5 flex items-center';
  static const headerLogo = 'w-28 md:w-32';
  static const headerNav = 'w-full flex items-center '
      'pl-12 md:pl-24 gap-4 md:gap-12';
  static const navLink = 'link link-hover';

  @override
  Component render(BuildContext context) {
    return Header(
        style: headerStyle,
        child: Group(
          children: [
            Image(
                src: 'assets/logo.png',
                alt: 'ShipFast logo',
                style: headerLogo),
            Div(
                style: headerNav,
                child: Group(
                  children: [
                    Link(
                        href: '#pricing',
                        style: navLink,
                        child: Text('Pricing')),
                    Link(
                        href: '#demo',
                        style: '$navLink hidden sm:inline',
                        child: Text('Demo')),
                    Link(
                        href: '#testimonials',
                        style: navLink,
                        child: Text('Wall of love')),
                  ],
                ))
          ],
        ));
  }
}
