import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/styles.dart';
import 'package:shipfast_clone/shared/svg_icons.dart';

class TestimonialSection1 extends StatelessComponent {
  const TestimonialSection1({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(
      tag: 'section',
      classes: 'p-8 md:p-12 space-y-16',
      children: [
        [
          img(
            src: '/images/mrr.png',
            alt: 'PostBridge MRR screenshot',
            classes: AppStyles.testimonialImage,
          ),
          [
            quoteIcon(AppStyles.testimonialQuoteIcon),
            text('Without ShipFast I might have never launched my SaaS and I would still be at \$0 MRR.')
                .p(AppStyles.testimonialText),
            [
              img(
                src: '/images/jackpfp.38e84582.png',
                alt: 'Jack Friks testimonial for ShipFast',
                classes: AppStyles.testimonialAuthorAvatar,
              ),
              text('Jack Friks').p(''),
            ].div(AppStyles.testimonialAuthorContainer),
            [
              [
                text('Built '),
                text('post-bridge.com').span('select-all'),
              ].span(AppStyles.testimonialBadge),
            ].div(AppStyles.testimonialBadgeContainer),
          ].div(AppStyles.testimonialContent),
        ].div(AppStyles.testimonialCard),
      ],
    );
  }
}
