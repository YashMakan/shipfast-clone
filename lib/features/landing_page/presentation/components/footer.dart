import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/styles.dart';
import 'package:shipfast_clone/shared/utils.dart';

class PageFooter extends StatelessWidget {
  const PageFooter({super.key});

  // Styles
  static const containerStyle = AppStyles.footerContainer;
  static const footerStyle = AppStyles.footer;
  static const logoContainer =
      'w-80 max-w-full flex-shrink-0 md:mx-0 mx-auto text-center md:text-left';
  static const logoRow =
      'flex gap-2 justify-center md:justify-start items-center';
  static const logoImage = 'w-6 h-6';
  static const logoText = 'font-extrabold tracking-tight text-base md:text-lg';
  static const copyrightText =
      'mt-3 text-sm text-base-content/80 leading-relaxed';
  static const layoutWrap =
      'flex lg:items-start md:flex-row md:flex-nowrap flex-wrap flex-col';
  static const linksWrap =
      'flex-grow flex flex-wrap md:pl-24 -mb-10 md:mt-0 mt-10 text-center md:text-left';

  @override
  Component render(BuildContext context) {
    return Footer(
      style: footerStyle,
      child: Div(
        style: containerStyle,
        child: Div(
          style: layoutWrap,
          child: Group(
            children: [
              Div(
                style: logoContainer,
                child: Group(
                  children: [
                    Link(
                      href: '/#',
                      style: logoRow,
                      child: Group(children: [
                        Image(
                          src: 'assets/logo.png',
                          alt: 'ShipFast logo',
                          style: logoImage,
                        ),
                        Text('ShipFast').span(logoText),
                      ]),
                    ),
                    Text(
                      'Ship your startup in days, not weeks\nCopyright © 2025 - All rights reserved',
                    ).p(copyrightText),
                  ],
                ),
              ),
              Div(
                style: linksWrap,
                child: Group(children: [
                  FooterLinksColumn(
                    title: 'LINKS',
                    links: {
                      'Login': '/api/auth/signin',
                      'Pricing': '/#pricing',
                    },
                  ),
                  FooterLinksColumn(
                    title: 'LEGAL',
                    links: {
                      'Terms of services': '/tos',
                      'Privacy policy': '/privacy-policy',
                    },
                  ),
                  FooterLinksColumn(
                    title: 'By the maker of ShipFast',
                    links: {
                      'Newsletter for makers': 'https://marclou.beehiiv.com/',
                    },
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FooterLinksColumn extends StatelessWidget {
  const FooterLinksColumn({required this.title, required this.links});

  final String title;
  final Map<String, String> links;

  static const columnStyle = 'lg:w-1/3 md:w-1/2 w-full px-4';
  static const titleStyle = AppStyles.footerTitle;
  static const linksContainer = AppStyles.footerLinksContainer;
  static const linkStyle = AppStyles.navLink;

  @override
  Component render(BuildContext context) {
    return Div(
      style: columnStyle,
      child: Group(
        children: [
          Text(title).div(titleStyle),
          Div(
            style: linksContainer,
            child: Group(
              children: [
                for (final entry in links.entries)
                  Link(
                    href: entry.value,
                    style: linkStyle,
                    child: Text(entry.key),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
