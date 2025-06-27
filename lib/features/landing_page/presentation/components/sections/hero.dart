import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/styles.dart';
import 'package:shipfast_clone/shared/svg_icons.dart';
import 'package:shipfast_clone/shared/utils.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  // Styles
  static const sectionStyle = AppStyles.heroSection;
  static const contentStyle = AppStyles.heroContent;
  static const productHuntLink = '-mb-4 md:-mb-6 group';
  static const titleStyle = AppStyles.heroTitle;
  static const titleHighlight = AppStyles.heroTitleHighlight;
  static const titleHighlightText = AppStyles.heroTitleHighlightText;
  static const titleHighlightWrapper = AppStyles.heroTitleHighlightWrapper;
  static const subtitleStyle = AppStyles.heroSubtitle;
  static const ctaButtonStyle = AppStyles.heroCtaButton;
  static const ctaIconStyle = AppStyles.heroCtaIcon;
  static const salesBannerStyle = AppStyles.salesBanner;
  static const salesBannerIconStyle = AppStyles.salesBannerIcon;
  static const usersStyle = AppStyles.heroUsers;
  static const usersAvatarsStyle = AppStyles.heroUsersAvatars;
  static const userAvatarStyle = AppStyles.heroUsersAvatar;
  static const ratingContainerStyle = AppStyles.heroRatingContainer;
  static const ratingTextStyle = AppStyles.heroRatingText;
  static const ratingTextBoldStyle = AppStyles.heroRatingTextBold;
  static const ratingStarStyle = AppStyles.starIcon;
  static const heroImageStyle = AppStyles.heroImage;
  static const heroImageWrapper = 'relative max-md:-m-4 lg:w-full';

  @override
  Component render(BuildContext context) {
    return Section(
      style: sectionStyle,
      child: Group(
        children: [
          Div(
            style: contentStyle,
            child: Group(
              children: [
                Link(
                  href: 'https://www.producthunt.com/posts/shipfast-2',
                  target: Target.blank,
                  style: productHuntLink,
                  attributes: {'title': 'View ShipFast on Product Hunt'},
                  child: productHuntBadge(
                    'w-32 md:w-36 fill-base-content/80 group-hover:fill-base-content',
                  ),
                ),
                H1(
                  style: titleStyle,
                  child: Group(
                    children: [
                      Text('Ship your startup ').span('relative'),
                      Span(
                        style: 'whitespace-nowrap relative',
                        child: Group(
                          children: [
                            Text('in days,').span('mr-3 sm:mr-4 md:mr-5'),
                            Span(
                              style: titleHighlightWrapper,
                              child: Group(
                                children: [
                                  Span(style: titleHighlight),
                                  Text('not weeks').span(titleHighlightText),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'The NextJS boilerplate with all you need to build your SaaS, AI tool, or any other web app and make your first \$ online fast.',
                ).p(subtitleStyle),
                Div(
                  style: 'space-y-4',
                  child: Group(
                    children: [
                      Button(
                        style: ctaButtonStyle,
                        attributes: {'title': 'Go to ShipFast Checkout'},
                        child: Group(
                          children: [
                            boltIcon(ctaIconStyle),
                            Text('Get ShipFast'),
                          ],
                        ),
                      ),
                      Div(
                          style: salesBannerStyle,
                          child: Group(
                            children: [
                              salesBannerIcon(salesBannerIconStyle),
                              Text('\$100 off').span('text-accent'),
                              Text(' for the first '),
                              Text('7250'),
                              Text(' customers ('),
                              Text('10'),
                              Text(' left)'),
                            ],
                          ))
                    ],
                  ),
                ),
                Div(
                  style: usersStyle,
                  child: Group(
                    children: [
                      _avatarGroup(),
                      Div(
                        style: ratingContainerStyle,
                        child: Group(
                          children: [
                            Div(
                              style: 'flex gap-0',
                              child: Group(
                                children: List.generate(
                                  5,
                                      (_) => starIcon(ratingStarStyle),
                                ),
                              ),
                            ),
                            Div(
                              style: ratingTextStyle,
                              child: Group(
                                children: [
                                  Text('7240').span(ratingTextBoldStyle),
                                  Text(' maker'),
                                  Text('s'),
                                  Text(' ship faster'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]
            )
          ),
          Div(
            style: heroImageWrapper,
            child: Image(
              src: 'assets/demo.753bdb0f.png',
              style: heroImageStyle,
              alt:
              'Mongo + Mailgun + Stripe + NextJS + Tailwind + NextAuth = ShipFast',
            )
          )
        ],
      ),
    );
  }
}

Component _avatarGroup() {
  final avatars = [
    {'alt': 'Lennard', 'src': 'assets/lennard.a8caddd5.png'},
    {'alt': 'Wahab', 'src': 'assets/wahab.c0419676.png'},
    {'alt': 'Naveen', 'src': 'assets/naveen.311d3eb1.png'},
    {'alt': 'Artificery', 'src': 'assets/artificery.ba1049ef.png'},
    {'alt': 'dunsin', 'src': 'assets/dunsin.c7d35d82.png'},
  ];

  return Div(
    style: HeroSection.usersAvatarsStyle,
    child: Group(
      children: avatars
          .map(
            (avatar) => Image(
              src: avatar['src']!,
              alt: avatar['alt']!,
              style: HeroSection.userAvatarStyle,
            ),
          )
          .toList(),
    ),
  );
}
