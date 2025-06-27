import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/styles.dart';
import 'package:shipfast_clone/shared/svg_icons.dart';

class PricingSection extends StatelessComponent {
  const PricingSection({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(
      tag: 'section',
      id: 'pricing',
      classes: AppStyles.sectionDark + ' overflow-hidden',
      children: [
        [
          [
            text('Pricing').p('font-medium text-primary mb-8'),
            text('Save hours of repetitive code, ship fast, get profitable!').h2(
                'font-bold text-3xl lg:text-5xl tracking-tight mb-8 max-w-2xl mx-auto'),
            // ... sales banner
          ].div('flex flex-col text-center w-full mb-20'),
          [
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
          ].div(
              'relative flex flex-col lg:flex-row items-center lg:items-stretch gap-8'),
          // ... another testimonial
        ].div('py-24 pb-0 px-8 max-w-7xl mx-auto'),
      ],
    );
  }
}

class _PricingPlan extends StatelessComponent {
  // ... properties for title, price, features, etc.

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
  Iterable<Component> build(BuildContext context) sync* {
    yield [
      if (isBundle) ...[
        text('BUNDLE').span(AppStyles.bundleBadge).div(
            'absolute top-0 left-1/2 -translate-x-1/2 -translate-y-1/2 z-20'),
        div([], classes: AppStyles.bundleWrapper),
      ],
      [
        [
          [
            text(title).p(AppStyles.pricingCardTitle),
          ].div('flex justify-between items-center gap-4'),
          [
            if (originalPrice != null)
              [
                text('\$$originalPrice')
                    .p(AppStyles.pricingStrikethroughLine)
                    .span(AppStyles.pricingStrikethrough),
              ].div('flex flex-col justify-end mb-[4px] text-lg'),
            text('\$$price').p(AppStyles.pricingPrice),
            [text('USD').p('text-xs opacity-60 uppercase font-semibold')]
                .div('flex flex-col justify-end mb-[4px]'),
          ].div('flex gap-2'),
          [
            for (final feature in features)
              [
                checkmarkIcon(AppStyles.checkmarkIcon),
                text(feature).span(''),
              ].li(AppStyles.pricingFeatureItem),
            for (final feature in disabledFeatures)
              [
                crossIcon(AppStyles.crossIcon),
                text(feature).span('text-base-content/30'),
              ].li(AppStyles.pricingFeatureItem),
          ].ul(AppStyles.pricingFeatureList),
          [
            button(
              classes:
                  'btn btn-primary group btn-block plausible-event-name=Checkout',
              [
                if (!isBundle) boltIcon(AppStyles.heroCtaIcon),
                text(cta),
              ],
            ),
            text('Pay once. Build unlimited projects!').p(
                'flex items-center justify-center gap-2 text-sm text-center text-base-content/80 font-medium relative'),
          ].div('space-y-2'),
        ].div(AppStyles.pricingCardContent),
      ].div('relative w-full'),
    ].div(isBundle ? AppStyles.pricingCard + ' w-full' : AppStyles.pricingCard);
  }
}
