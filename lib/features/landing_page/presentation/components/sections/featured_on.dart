import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/styles.dart';
import 'package:shipfast_clone/shared/svg_icons.dart';

class FeaturedOnSection extends StatelessComponent {
  const FeaturedOnSection({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield [
      text('Featured on').span(AppStyles.featuredOnLabel),
      a(
          href: 'https://news.ycombinator.com/item?id=37333976',
          target: Target.blank,
          attributes: {
            'rel': 'noreferrer',
            'title': 'Featured on Hackers New'
          },
          [
            hackerNewsLogo('${AppStyles.featuredOnLogo} w-28 md:w-32'),
          ]),
      a(
          href: 'https://www.producthunt.com/products/shipfast-2',
          target: Target.blank,
          attributes: {
            'rel': 'noreferrer',
            'title': 'Featured on Product Hunt'
          },
          [
            productHuntLogo('${AppStyles.featuredOnLogo} w-28 md:w-32'),
          ]),
      a(
          href:
              'https://twitter.com/marc_louvion/status/1697165875957449084?s=20',
          target: Target.blank,
          attributes: {
            'rel': 'noreferrer',
            'title': 'Featured on X.com'
          },
          [
            xLogo('${AppStyles.featuredOnLogo} w-8 md:w-9 contrast-50'),
          ]),
      a(
          href:
              'https://www.reddit.com/r/SideProject/comments/1664vqe/i_made_a_code_boilerplate_to_ship_projects_in/',
          target: Target.blank,
          attributes: {
            'rel': 'noreferrer',
            'title': 'Featured on Reddit'
          },
          [
            redditLogo('${AppStyles.featuredOnLogo} w-[5.5rem] md:w-24'),
          ]),
    ].div(AppStyles.featuredOnContainer);
  }
}
