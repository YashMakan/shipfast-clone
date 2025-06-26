import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/styles.dart';

class TestimonialsWallSection extends StatelessComponent {
  const TestimonialsWallSection({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(
      tag: 'section',
      id: 'testimonials',
      classes: AppStyles.sectionDark,
      children: [
        [
          [
            text('7240 makers built AI tools, SaaS, and more')
                .h2('sm:text-5xl text-4xl font-extrabold text-base-content'),
          ].div('mb-8'),
          text('They made their first \$ online, and some even quit their 9-5!')
              .p('lg:w-2/3 mx-auto leading-relaxed text-base text-base-content/80'),
        ].div('flex flex-col text-center w-full mb-20'),
        // The masonry layout for testimonials would be implemented here, likely using a ul/li structure
      ],
    );
  }
}
