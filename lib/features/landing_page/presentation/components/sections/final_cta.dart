import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/styles.dart';
import 'package:shipfast_clone/shared/svg_icons.dart';

class FinalCtaSection extends StatelessComponent {
  const FinalCtaSection({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(
      tag: 'section',
      classes: AppStyles.sectionLight,
      children: [
        [
          [
            // ... rocket icon svg
            text('Boost your app, launch, earn').h2(
                'relative font-bold text-3xl md:text-5xl tracking-tight mt-4 mb-4 md:mb-8'),
            text('Don\'t waste time on Stripe subscriptions or designing a pricing section...')
                .p('relative text-lg text-base-content/80'),
          ].div('text-center'),
          button([
            boltIcon(AppStyles.heroCtaIcon),
            text('Get ShipFast'),
          ], classes: AppStyles.heroCtaButton),
        ].div(
            'pb-32 pt-16 px-8 max-w-3xl mx-auto flex flex-col items-center gap-8 md:gap-12'),
      ],
    );
  }
}
