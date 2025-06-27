import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/styles.dart';
import 'package:shipfast_clone/shared/svg_icons.dart';
import 'package:shipfast_clone/shared/utils.dart';

class PricingSection extends StatelessWidget {
  const PricingSection({super.key});

  // Styles
  static const sectionStyle = '${AppStyles.sectionDark} overflow-hidden';
  static const containerStyle = 'py-24 pb-0 px-8 max-w-7xl mx-auto';
  static const headerStyle = 'flex flex-col text-center w-full mb-20';
  static const planRowStyle =
      'relative flex flex-col lg:flex-row items-center lg:items-stretch gap-8';

  @override
  Component render(BuildContext context) {
    return Section(
      id: 'pricing',
      style: sectionStyle,
      child: Div(
        style: containerStyle,
        child: Group(
          children: [
            Div(
              style: headerStyle,
              child: Group(
                children: [
                  Text('Pricing').p('font-medium text-primary mb-8'),
                  Text(
                    'Save hours of repetitive code, ship fast, get profitable!',
                  ).h2(
                      'font-bold text-3xl lg:text-5xl tracking-tight mb-8 max-w-2xl mx-auto'),
                ],
              ),
            ),
            Div(
              style: planRowStyle,
              child: Group(
                children: [
                  for (int i = 0; i < 3; i++)
                    _PricingPlan(
                      title: 'Starter',
                      price: '199',
                      originalPrice: '299',
                      features: [
                        'NextJS boilerplate',
                        'SEO & Blog',
                        'Mailgun emails',
                        'Stripe / Lemon Squeezy',
                        'MongoDB / Supabase',
                        'Google Oauth & Magic Links',
                        'Components & animations',
                        'ChatGPT prompts for terms & privacy',
                      ],
                      disabledFeatures: [
                        'Discord community & Leaderboard',
                        '\$1,210 worth of discounts',
                        'Lifetime updates',
                      ],
                      cta: 'Get ShipFast',
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PricingPlan extends StatelessWidget {
  const _PricingPlan({
    required this.title,
    required this.price,
    this.originalPrice,
    required this.features,
    this.disabledFeatures = const [],
    required this.cta,
    this.isBundle = false,
  });

  final String title;
  final String price;
  final String? originalPrice;
  final List<String> features;
  final List<String> disabledFeatures;
  final String cta;
  final bool isBundle;

  @override
  Component render(BuildContext context) {
    return Div(
      style:
          isBundle ? '${AppStyles.pricingCard} w-full' : AppStyles.pricingCard,
      child: Group(
        children: [
          if (isBundle)
            Group(
              children: [
                Text('BUNDLE').span(AppStyles.bundleBadge).div(
                    'absolute top-0 left-1/2 -translate-x-1/2 -translate-y-1/2 z-20'),
                Div(style: AppStyles.bundleWrapper),
              ],
            ),
          Div(
            style: 'relative w-full',
            child: Div(
              style: AppStyles.pricingCardContent,
              child: Group(
                children: [
                  Div(
                    style: 'flex justify-between items-center gap-4',
                    child: Text(title).p(AppStyles.pricingCardTitle),
                  ),
                  Div(
                    style: 'flex gap-2',
                    child: Group(
                      children: [
                        if (originalPrice != null)
                          Div(
                            style: 'flex flex-col justify-end mb-[4px] text-lg',
                            child: Text('\$$originalPrice')
                                .p(AppStyles.pricingStrikethroughLine)
                                .span(AppStyles.pricingStrikethrough),
                          ),
                        Text('\$$price').p(AppStyles.pricingPrice),
                        Div(
                          style: 'flex flex-col justify-end mb-[4px]',
                          child: Text('USD')
                              .p('text-xs opacity-60 uppercase font-semibold'),
                        ),
                      ],
                    ),
                  ),
                  Group(
                    children: [
                      for (final feature in features)
                        Group(
                          children: [
                            checkmarkIcon(AppStyles.checkmarkIcon),
                            Text(feature).span(''),
                          ],
                        ).li(AppStyles.pricingFeatureItem),
                      for (final feature in disabledFeatures)
                        Group(
                          children: [
                            crossIcon(AppStyles.crossIcon),
                            Text(feature).span('text-base-content/30'),
                          ],
                        ).li(AppStyles.pricingFeatureItem),
                    ],
                  ).ul(AppStyles.pricingFeatureList),
                  Div(
                    style: 'space-y-2',
                    child: Group(
                      children: [
                        Button(
                          style:
                              'btn btn-primary group btn-block plausible-event-name=Checkout',
                          child: Group(
                            children: [
                              if (!isBundle) boltIcon(AppStyles.heroCtaIcon),
                              Text(cta),
                            ],
                          ),
                        ),
                        Text('Pay once. Build unlimited projects.').p(
                            'flex items-center justify-center gap-2 text-sm text-center text-base-content/80 font-medium relative'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
