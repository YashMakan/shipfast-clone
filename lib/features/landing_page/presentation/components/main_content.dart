import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/utils.dart';

import 'sections/_sections.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Component render(BuildContext context) {
    return DomComponent(
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
