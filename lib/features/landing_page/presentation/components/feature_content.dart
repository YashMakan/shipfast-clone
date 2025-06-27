import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/features/landing_page/domain/models/feature.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/styles.dart';
import 'package:shipfast_clone/shared/svg_icons.dart';
import 'package:shipfast_clone/shared/utils.dart';

class FeatureContent extends StatelessWidget {
  const FeatureContent({required this.feature});

  final Feature feature;

  @override
  Component render(BuildContext context) {
    return Div(
      style:
          'text-base-content/80 leading-relaxed space-y-4 px-12 md:px-0 py-12 max-w-xl animate-opacity',
      child: Group(
        children: [
          Text(feature.title).p('font-medium text-base-content text-lg'),
          Div(
            child: Group(
              children: [
                for (final item in feature.content)
                  [
                    checkmarkIcon(AppStyles.checkmarkIcon),
                    Text(item),
                  ].li(AppStyles.pricingFeatureItem),
                [
                  checkmarkIcon(AppStyles.checkmarkIcon),
                  Text('Time saved: ${feature.timeSaved}'),
                ].li('${AppStyles.pricingFeatureItem} text-accent font-medium'),
                [
                  checkmarkIcon(AppStyles.checkmarkIcon),
                  Text('Headaches: 0'),
                ].li('${AppStyles.pricingFeatureItem} text-accent font-medium'),
              ],
            ),
          ).ul('space-y-1'),
          Div(
            child: Group(
              children: [
                for (var i = 0; i < feature.integrations.length; i++) ...[
                  if (i > 0)
                    Text('OR').span('mx-2 text-base-content/60 text-xs'),
                  Div(
                    style: 'pt-3 flex items-center gap-2 text-sm font-semibold',
                    child: Group(
                      children: [
                        Image(
                          src: feature.integrations[i].logo,
                          alt: feature.integrations[i].name,
                          style: 'w-8 h-8',
                        ),
                        Text('with ').span(''),
                        Text(feature.integrations[i].name).a(
                          AppStyles.navLink,
                          href: feature.integrations[i].url,
                          target: '_blank',
                        ),
                      ],
                    ),
                  ),
                ]
              ],
            ),
          ),
        ],
      ),
    );
  }
}
