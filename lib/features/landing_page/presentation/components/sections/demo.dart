import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/styles.dart';

class DemoSection extends StatelessComponent {
  const DemoSection({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(
      tag: 'section',
      id: 'demo',
      classes: AppStyles.sectionLight,
      children: [
        [
          [
            img(
                src: '/images/maker.png',
                alt: 'Marc Lou — Product Hunt Maker of the Year 2023',
                classes:
                    'w-32 h-32 md:w-52 md:h-52 rounded-lg float-left mr-8 mb-8 object-center object-cover'),
            text('Hey, it\'s Marc 👋')
                .p('mb-4 text-base-content md:text-lg font-medium'),
            text('Hey, it\'s Marc 👋')
                .p('mb-4 text-base-content md:text-lg font-medium'),
          ].div('leading-relaxed text-base-content/80 mb-12 max-w-xl mx-auto'),
          [
            DomComponent(
              tag: 'iframe',
              classes: 'absolute inset-0 w-full h-full',
              attributes: {
                'src': 'https://www.youtube.com/embed/W3Pb3v_GpoE',
                'title': 'ShipFast tutorial',
                'frameborder': '0',
                'allow':
                    'accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share',
                'allowfullscreen': '',
              },
            ),
          ].div('relative w-full aspect-video overflow-hidden sm:rounded-lg'),
          // ... second testimonial in this section
        ].div('py-24 max-md:px-8 max-w-3xl mx-auto'),
      ],
    );
  }
}
