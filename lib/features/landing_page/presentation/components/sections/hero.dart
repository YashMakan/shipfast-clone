import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/styles.dart';
import 'package:shipfast_clone/shared/svg_icons.dart';

class HeroSection extends StatelessComponent {
  const HeroSection({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(
      tag: 'section',
      classes: AppStyles.heroSection,
      children: [
        [
          a(
              href: 'https://www.producthunt.com/posts/shipfast-2',
              target: Target.blank,
              classes: '-mb-4 md:-mb-6 group',
              attributes: {
                'title': 'View ShipFast on Product Hunt'
              },
              [
                productHuntBadge(
                    'w-32 md:w-36 fill-base-content/80 group-hover:fill-base-content'),
              ]),
          h1(classes: AppStyles.heroTitle, [
            text('Ship your startup ').span('relative'),
            [
              text('in days,').span('mr-3 sm:mr-4 md:mr-5'),
              [
                span([], classes: AppStyles.heroTitleHighlight),
                text('not weeks').span(AppStyles.heroTitleHighlightText),
              ].span(AppStyles.heroTitleHighlightWrapper),
            ].span('whitespace-nowrap relative'),
          ]),
          text('The NextJS boilerplate with all you need to build your SaaS, AI tool, or any other web app and make your first \$ online fast.')
              .p(AppStyles.heroSubtitle),
          [
            button(
              classes: AppStyles.heroCtaButton,
              attributes: {'title': 'Go to ShipFast Checkout'},
              [
                boltIcon(AppStyles.heroCtaIcon),
                text('Get ShipFast'),
              ],
            ),
            [
              salesBannerIcon(AppStyles.salesBannerIcon),
              [
                text('\$100 off').span('text-accent'),
              ].span(''),
              text('for the first '),
              text('7250'),
              text(' customers ('),
              text('10'),
              text(' left)'),
            ].p(AppStyles.salesBanner),
          ].div('space-y-4'),
          [
            _AvatarGroup(),
            [
              div([
                starIcon(AppStyles.starIcon),
                starIcon(AppStyles.starIcon),
                starIcon(AppStyles.starIcon),
                starIcon(AppStyles.starIcon),
                starIcon(AppStyles.starIcon),
              ], classes: 'flex gap-0'),
              [
                text('7240').span(AppStyles.heroRatingTextBold),
                text(' maker'),
                text('s'),
                text(' ship faster'),
              ].div(AppStyles.heroRatingText),
            ].div(AppStyles.heroRatingContainer),
          ].div(AppStyles.heroUsers),
        ].div(AppStyles.heroContent),
        img(
          src: 'images/demo.753bdb0f.png',
          alt:
              'Mongo + Mailgun + Stripe + NextJS + Tailwind + NextAuth = ShipFast',
          classes: AppStyles.heroImage,
        ).div('relative max-md:-m-4 lg:w-full'),
      ],
    );
  }
}

Component _AvatarGroup() {
  final avatars = [
    {'alt': 'Lennard', 'src': 'images/lennard.a8caddd5.png'},
    {'alt': 'Wahab', 'src': 'images/wahab.c0419676.png'},
    {'alt': 'Naveen', 'src': 'images/naveen.311d3eb1.png'},
    {'alt': 'Artificery', 'src': 'images/artificery.ba1049ef.png'},
    {'alt': 'dunsin', 'src': 'images/dunsin.c7d35d82.png'},
  ];

  return [
    for (final avatar in avatars)
      img(src: avatar['src']!, alt: avatar['alt']!)
          .div(AppStyles.heroUsersAvatar)
  ].div(AppStyles.heroUsersAvatars);
}
