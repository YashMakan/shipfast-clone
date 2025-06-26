import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/styles.dart';

class AiIntegrationSection extends StatelessComponent {
  const AiIntegrationSection({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    final logos = [
      {'alt': 'Github Copilot', 'src': 'images/copilot.png'},
      {'alt': 'Cursor', 'src': 'images/cursor.png'},
      {'alt': 'Claude', 'src': 'images/claude.png'},
      {'alt': 'ChatGPT', 'src': 'images/openai.png'},
      {'alt': 'Windsurf', 'src': 'images/windsurf.png'},
      {'alt': 'Gemini', 'src': 'images/gemini.png'},
      {'alt': 'Grok', 'src': 'images/grok.png'},
      {'alt': 'Deepseek', 'src': 'images/deepseek.png'},
    ];

    yield DomComponent(
      tag: 'section',
      classes: AppStyles.sectionLight,
      children: [
        [
          [
            [
              img(
                  src: '/images/logo.png',
                  alt: 'ShipFast logo',
                  classes: 'w-36 md:w-52 mx-auto drop-shadow'),
              text('codebase').p(
                  'max-md:hidden absolute text-accent translate-x-2/3 -translate-y-1/2 rotate-6 top-0 right-0 text-sm font-mono'),
            ].div('relative'),
          ].div('mx-auto text-center flex justify-center'),
          text('+').p('text-center text-3xl md:text-4xl !mt-5'),
          [
            for (final logo in logos)
              [
                img(
                    alt: logo['alt']!,
                    src: logo['src']!,
                    classes:
                        'w-12 h-12 md:w-16 md:h-16 rounded-lg shadow aspect-square'),
              ].div('relative'),
            text('AI').p(
                'max-md:hidden absolute text-accent translate-x-full -translate-y-1/2 rotate-6 -top-3 -right-1 text-sm font-mono'),
          ].div('flex flex-wrap justify-center gap-4 relative'),
          text('=').p('text-center text-3xl md:text-4xl'),
          [
            [
              text('Launch your idea'),
              text('INSTANTLY').span(
                  'text-neutral bg-neutral-content px-1 md:px-1.5 tracking-wide'),
            ].p('text-center text-2xl md:text-4xl font-bold'),
          ].div('mx-auto text-center'),
        ].div('py-12 max-md:px-8 max-w-3xl mx-auto md:space-y-8 space-y-6'),
      ],
    );
  }
}
