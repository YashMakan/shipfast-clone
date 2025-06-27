import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/styles.dart';
import 'package:shipfast_clone/shared/svg_icons.dart';
import 'package:shipfast_clone/shared/utils.dart';

class FeaturedOnSection extends StatelessWidget {
  const FeaturedOnSection({super.key});

  // Styles
  static const containerStyle = AppStyles.featuredOnContainer;
  static const labelStyle = AppStyles.featuredOnLabel;
  static const logoBaseStyle = AppStyles.featuredOnLogo;

  @override
  Component render(BuildContext context) {
    return Div(
      style: containerStyle,
      child: Group(
        children: [
          Text('Featured on').span(labelStyle),
          Link(
            href: 'https://news.ycombinator.com/item?id=37333976',
            target: Target.blank,
            attributes: {
              'rel': 'noreferrer',
              'title': 'Featured on Hackers New',
            },
            child: hackerNewsLogo('$logoBaseStyle w-28 md:w-32'),
          ),
          Link(
            href: 'https://www.producthunt.com/products/shipfast-2',
            target: Target.blank,
            attributes: {
              'rel': 'noreferrer',
              'title': 'Featured on Product Hunt',
            },
            child: productHuntLogo('$logoBaseStyle w-28 md:w-32'),
          ),
          Link(
            href:
            'https://twitter.com/marc_louvion/status/1697165875957449084?s=20',
            target: Target.blank,
            attributes: {
              'rel': 'noreferrer',
              'title': 'Featured on X.com',
            },
            child: xLogo('$logoBaseStyle w-8 md:w-9 contrast-50'),
          ),
          Link(
            href:
            'https://www.reddit.com/r/SideProject/comments/1664vqe/i_made_a_code_boilerplate_to_ship_projects_in/',
            target: Target.blank,
            attributes: {
              'rel': 'noreferrer',
              'title': 'Featured on Reddit',
            },
            child: redditLogo('$logoBaseStyle w-[5.5rem] md:w-24'),
          ),
        ],
      ),
    );
  }
}
