import 'package:intl/intl.dart';
import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/features/landing_page/domain/models/feature.dart';
import 'package:shipfast_clone/features/landing_page/presentation/components/feature_content.dart';
import 'package:shipfast_clone/features/landing_page/presentation/components/feature_tab.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/styles.dart';
import 'package:shipfast_clone/shared/utils.dart';

class FeaturesSection extends StatefulWidget {
  const FeaturesSection({super.key});

  @override
  State<FeaturesSection> createState() => _FeaturesSectionState();
}

class _FeaturesSectionState extends WidgetState<FeaturesSection> {
  final List<Feature> _features = defaultFeatures;

  late int _selectedFeature;

  @override
  void initState() {
    super.initState();
    _selectedFeature = _features.first.id;
  }

  @override
  Component render(BuildContext context) {
    final selected = _features.firstWhere((f) => f.id == _selectedFeature);

    return Section(
      id: 'features',
      style: 'pt-24 pb-12',
      child: Group(
        children: [
          _buildIntro(),
          _buildFeatureTabs(),
          _buildFeatureDetails(selected),
        ],
      ),
    );
  }

  Component _buildIntro() {
    return Div(
      style: AppStyles.container3xl,
      child: Div(
        style: 'bg-base-100 max-md:px-8 max-w-3xl',
        child: Group(
          children: [
            Text(
              'const launch_time = "${DateFormat('HH:mm aa').format(DateTime.now())}"',
            ).p('text-accent font-medium text-sm font-mono mb-3'),
            Text('Supercharge your app instantly, launch faster, make \$')
                .h2('font-bold text-3xl lg:text-5xl tracking-tight mb-8'),
            Text(
              'Login users, process payments and send emails at lightspeed. Spend your time building your startup, not integrating APIs. ShipFast provides you with the boilerplate code you need to launch, FAST.',
            ).div('text-base-content/80 leading-relaxed mb-8 lg:text-lg'),
          ],
        ),
      ),
    );
  }

  Component _buildFeatureTabs() {
    return Div(
      style:
          'grid grid-cols-4 md:flex justify-start gap-4 md:gap-12 max-md:px-8 max-w-3xl mx-auto mb-8',
      child: Group(
        children: _features
            .map(
              (f) => FeatureTab(
                title: f.title,
                iconBuilder: f.icon,
                isSelected: f.id == _selectedFeature,
                onPressed: () => setState(() => _selectedFeature = f.id),
              ),
            )
            .toList(),
      ),
    );
  }

  Component _buildFeatureDetails(Feature feature) {
    return Div(
      style: '',
      child: Div(
        style: AppStyles.sectionDark,
        child: Div(
          style:
              'max-w-3xl mx-auto flex flex-col md:flex-row justify-center md:justify-start md:items-center gap-12',
          child: Group(
            children: [
              FeatureContent(feature: feature),
              Div(
                style:
                    'hidden aspect-square max-md:w-full md:h-[28rem] bg-neutral md:order-first',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
