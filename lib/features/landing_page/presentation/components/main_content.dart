import 'package:jaspr/jaspr.dart';

import 'sections/_sections.dart';

class MainContent extends StatelessComponent {
  const MainContent({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(
      tag: 'main',
      classes: 'min-h-screen',
      children: [
        HeroSection(),
        TestimonialSection1(),
        FeaturedOnSection(),
        ProblemSolutionSection(),
        FeaturesSection(),
        AiIntegrationSection(),
        DemoSection(),
        PricingSection(),
        FaqSection(),
        TestimonialsWallSection(),
        FinalCtaSection(),
      ],
    );
  }
}
