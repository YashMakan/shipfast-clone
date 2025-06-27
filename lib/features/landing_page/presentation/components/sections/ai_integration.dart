import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/utils.dart';

class AiIntegrationSection extends StatelessWidget {
  const AiIntegrationSection({super.key});

  // Styles
  static const sectionStyle = 'bg-base-100';
  static const containerStyle =
      'py-12 max-md:px-8 max-w-3xl mx-auto md:space-y-8 space-y-6';
  static const centerRow = 'mx-auto text-center flex justify-center';
  static const mainText = 'text-center text-3xl md:text-4xl';
  static const aiLogoImage =
      'w-12 h-12 md:w-16 md:h-16 rounded-lg shadow aspect-square';
  static const heroText = 'text-center text-2xl md:text-4xl font-bold';
  static const highlight =
      'text-neutral bg-neutral-content px-1 md:px-1.5 tracking-wide';
  static const annotationLeft =
      'max-md:hidden absolute text-accent translate-x-2/3 -translate-y-1/2 rotate-6 top-0 right-0 text-sm font-mono';
  static const annotationRight =
      'max-md:hidden absolute text-accent translate-x-full -translate-y-1/2 rotate-6 -top-3 -right-1 text-sm font-mono';

  static final logos = [
    {'alt': 'Github Copilot', 'src': 'assets/copilot.png'},
    {'alt': 'Cursor', 'src': 'assets/cursor.png'},
    {'alt': 'Claude', 'src': 'assets/claude.png'},
    {'alt': 'ChatGPT', 'src': 'assets/openai.png'},
    {'alt': 'Windsurf', 'src': 'assets/windsurf.png'},
    {'alt': 'Gemini', 'src': 'assets/gemini.png'},
    {'alt': 'Grok', 'src': 'assets/grok.png'},
    {'alt': 'Deepseek', 'src': 'assets/deepseek.png'},
  ];

  @override
  Component render(BuildContext context) {
    return Section(
      style: sectionStyle,
      child: Div(
        style: containerStyle,
        child: Group(
          children: [
            // ShipFast Logo + Label
            Div(
              style: centerRow,
              child: Div(
                style: 'relative',
                child: Group(
                  children: [
                    Image(
                      src: '/assets/logo.png',
                      alt: 'ShipFast logo',
                      style: 'w-36 md:w-52 mx-auto drop-shadow',
                    ),
                    Text('codebase').p(annotationLeft),
                  ],
                ),
              ),
            ),

            // Plus sign
            Text('+').p('$mainText !mt-5'),

            // AI Logos row
            Div(
              style: 'flex flex-wrap justify-center gap-4 relative',
              child: Group(
                children: [
                  for (final logo in logos)
                    Image(
                      src: logo['src']!,
                      alt: logo['alt']!,
                      style: aiLogoImage,
                    ).div('relative'),
                  Text('AI').p(annotationRight),
                ],
              ),
            ),

            // Equals sign
            Text('=').p(mainText),

            // Result: Launch instantly
            Div(
                style: 'mx-auto text-center',
                child: Paragraph(
                    style: heroText,
                    child: Group(
                      children: [
                        Text('Launch your idea '),
                        Text('INSTANTLY').span(highlight),
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}
