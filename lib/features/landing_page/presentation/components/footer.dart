import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/styles.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  // This would be built with multiple columns for links
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(
      tag: 'footer',
      classes: AppStyles.footer,
      children: [
        [
          [
            [
              a([
                img(
                    src: 'images/logo.png',
                    alt: 'ShipFast logo',
                    classes: 'w-6 h-6'),
                strong(
                    classes:
                        'font-extrabold tracking-tight text-base md:text-lg',
                    [text('ShipFast')]),
              ],
                  href: '/#',
                  classes:
                      'flex gap-2 justify-center md:justify-start items-center'),
              text('Ship your startup in days, not weeks\nCopyright © 2025 - All rights reserved')
                  .p('mt-3 text-sm text-base-content/80 leading-relaxed'),
              // ... more footer content
            ].div(
                'w-80 max-w-full flex-shrink-0 md:mx-0 mx-auto text-center md:text-left'),
            [
              // Footer Link Columns
              _FooterLinksColumn(
                  title: 'LINKS',
                  links: {'Login': '/api/auth/signin', 'Pricing': '/#pricing'}),
              _FooterLinksColumn(title: 'LEGAL', links: {
                'Terms of services': '/tos',
                'Privacy policy': '/privacy-policy'
              }),
              _FooterLinksColumn(title: 'By the maker of ShipFast', links: {
                'Newsletter for makers': 'https://marclou.beehiiv.com/'
              }),
            ].div(
                'flex-grow flex flex-wrap md:pl-24 -mb-10 md:mt-0 mt-10 text-center md:text-left'),
          ].div(
              'flex lg:items-start md:flex-row md:flex-nowrap flex-wrap flex-col'),
        ].div(AppStyles.footerContainer),
      ],
    );
  }
}

class _FooterLinksColumn extends StatelessComponent {
  const _FooterLinksColumn({required this.title, required this.links});

  final String title;
  final Map<String, String> links;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield [
      div(classes: AppStyles.footerTitle, [text(title)]),
      [
        for (final entry in links.entries)
          a(href: entry.value, classes: AppStyles.navLink, [text(entry.key)])
      ].div(AppStyles.footerLinksContainer),
    ].div('lg:w-1/3 md:w-1/2 w-full px-4');
  }
}
