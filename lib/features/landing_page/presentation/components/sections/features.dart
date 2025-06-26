import 'package:intl/intl.dart';
import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/styles.dart';
import 'package:shipfast_clone/shared/svg_icons.dart';

class FeaturesSection extends StatefulComponent {
  const FeaturesSection({super.key});

  @override
  State<FeaturesSection> createState() => _FeaturesSectionState();
}

class _FeaturesSectionState extends State<FeaturesSection> {
  final _features = [
    {
      'title': 'Emails',
      'icon': emailIcon,
      'content': [
        'Send transactional emails',
        'DNS setup to avoid spam folder (DKIM, DMARC, SPF in subdomain)',
        'Webhook to receive & forward emails',
      ],
      'timeSaved': '3 hours',
      'integrations': [
        {
          'name': 'Mailgun',
          'logo': '/images/mailgun.459dea11.png',
          'url': 'https://www.mailgun.com/'
        },
        {
          'name': 'Resend',
          'logo': '/images/resend_square.ad1418c0.png',
          'url': 'https://resend.com/'
        },
      ]
    },
    // ... other feature maps for Payments, Login, etc.
  ];

  late String _selectedFeature;

  @override
  void initState() {
    super.initState();
    _selectedFeature = _features.first['title'] as String;
  }

  @override
  Iterable<Component> build(BuildContext context) sync* {
    final selectedFeatureData =
        _features.firstWhere((f) => f['title'] == _selectedFeature);

    yield DomComponent(
      tag: 'section',
      id: 'features',
      classes: 'pt-24 pb-12',
      children: [
        [
          [
            text('const launch_time = "${DateFormat('HH:mm aa').format(DateTime.now())}"')
                .p('text-accent font-medium text-sm font-mono mb-3'),
            text('Supercharge your app instantly, launch faster, make \$')
                .h2('font-bold text-3xl lg:text-5xl tracking-tight mb-8'),
            text('Login users, process payments and send emails at lightspeed. Spend your time building your startup, not integrating APIs. ShipFast provides you with the boilerplate code you need to launch, FAST.')
                .div('text-base-content/80 leading-relaxed mb-8 lg:text-lg'),
          ].div('bg-base-100 max-md:px-8 max-w-3xl'),
        ].div(AppStyles.container3xl),
        [
          [
            for (final feature in _features)
              _FeatureTab(
                title: feature['title'] as String,
                iconBuilder: feature['icon'] as Component Function(String),
                isSelected: _selectedFeature == feature['title'],
                onPressed: () => setState(
                    () => _selectedFeature = feature['title'] as String),
              )
          ].div(
              'grid grid-cols-4 md:flex justify-start gap-4 md:gap-12 max-md:px-8 max-w-3xl mx-auto mb-8'),
          [
            [
              _FeatureContent(
                title: selectedFeatureData['title'] as String,
                content: selectedFeatureData['content'] as List<String>,
                timeSaved: selectedFeatureData['timeSaved'] as String,
                integrations: selectedFeatureData['integrations']
                    as List<Map<String, String>>,
              ),
              div([],
                  classes:
                      'hidden aspect-square max-md:w-full md:h-[28rem] bg-neutral md:order-first'),
            ].div(
                'max-w-3xl mx-auto flex flex-col md:flex-row justify-center md:justify-start md:items-center gap-12'),
          ].div(AppStyles.sectionDark),
        ].div(''),
      ],
    );
  }
}

class _FeatureTab extends StatelessComponent {
  const _FeatureTab({
    required this.title,
    required this.iconBuilder,
    required this.isSelected,
    required this.onPressed,
  });

  final String title;
  final Component Function(String) iconBuilder;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    final classes = isSelected ? 'text-primary' : 'text-base-content/50';
    yield DomComponent(
      tag: 'span',
      classes:
          'flex flex-col items-center justify-center gap-3 select-none cursor-pointer p-2 duration-100 $classes',
      events: {'click': (_) => onPressed()},
      children: [
        iconBuilder('w-8 h-8').span(''),
        text(title).span('font-medium text-sm'),
      ],
    );
  }
}

class _FeatureContent extends StatelessComponent {
  const _FeatureContent({
    required this.title,
    required this.content,
    required this.timeSaved,
    required this.integrations,
  });

  final String title;
  final List<String> content;
  final String timeSaved;
  final List<Map<String, String>> integrations;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield [
      text(title).p('font-medium text-base-content text-lg'),
      [
        for (final item in content)
          [
            checkmarkIcon(AppStyles.checkmarkIcon),
            text(item),
          ].li(AppStyles.pricingFeatureItem),
        [
          checkmarkIcon(AppStyles.checkmarkIcon),
          text('Time saved: $timeSaved'),
        ].li('${AppStyles.pricingFeatureItem} text-accent font-medium'),
        [
          checkmarkIcon(AppStyles.checkmarkIcon),
          text('Headaches: 0'),
        ].li('${AppStyles.pricingFeatureItem} text-accent font-medium'),
      ].ul('space-y-1'),
      [
        for (var i = 0; i < integrations.length; i++) ...[
          if (i > 0) text('OR').span('mx-2 text-base-content/60 text-xs'),
          [
            img(
                src: integrations[i]['logo']!,
                alt: integrations[i]['name']!,
                classes: 'w-8 h-8'),
            text('with ').span(''),
            text(integrations[i]['name']!).a(AppStyles.navLink,
                href: integrations[i]['url']!, target: '_blank'),
          ].div('pt-3 flex items-center gap-2 text-sm font-semibold'),
        ]
      ].div(''),
    ].div(
        'text-base-content/80 leading-relaxed space-y-4 px-12 md:px-0 py-12 max-w-xl animate-opacity');
  }
}
