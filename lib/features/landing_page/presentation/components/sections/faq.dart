import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/styles.dart';

class FaqSection extends StatefulComponent {
  const FaqSection({super.key});

  @override
  State<FaqSection> createState() => _FaqSectionState();
}

class _FaqSectionState extends State<FaqSection> {
  final faqs = [
    {
      'q': 'What do I get exactly?',
      'a':
          '1/ The NextJS starter with all the boilerplate code you need to run an online business... 2/ The documentation... 3/ With the Premium plan, access to our Discord...'
    },
    // Add other FAQs here...
  ];

  String? openFaq;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(
      tag: 'section',
      classes: AppStyles.sectionDark,
      id: 'faq',
      children: [
        [
          [
            text('Frequently Asked Questions').p(AppStyles.faqTitle),
            [
              text('Have another question? Contact me on'),
              text(' Twitter').a(AppStyles.navLink,
                  href: 'https://twitter.com/marc_louvion', target: '_blank'),
              text(' or by'),
              text(' email').a(AppStyles.navLink,
                  href: 'mailto:hello@shipfa.st', target: '_blank'),
              text('.'),
            ].div(AppStyles.faqSubtitle),
          ].div('flex flex-col text-left basis-1/2'),
          [
            for (final faq in faqs)
              _FaqItem(
                question: faq['q']!,
                answer: faq['a']!,
                isOpen: openFaq == faq['q'],
                onToggle: () {
                  setState(() {
                    if (openFaq == faq['q']) {
                      openFaq = null;
                    } else {
                      openFaq = faq['q'];
                    }
                  });
                },
              )
          ].ul('basis-1/2'),
        ].div(AppStyles.faqContainer),
      ],
    );
  }
}

class _FaqItem extends StatelessComponent {
  const _FaqItem({
    required this.question,
    required this.answer,
    required this.isOpen,
    required this.onToggle,
  });

  final String question;
  final String answer;
  final bool isOpen;
  final VoidCallback onToggle;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield li([
      button(
        classes: AppStyles.faqItemButton,
        events: {'click': (_) => onToggle()},
        [
          text(question).span('flex-1 text-base-content'),
          // You would create an SVG component for the plus/minus icon
          RawText(
              '<svg class="flex-shrink-0 w-4 h-4 ml-auto fill-current" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg"><rect y="7" width="16" height="2" rx="1" class="transform origin-center transition duration-200 ease-out ${isOpen ? 'rotate-180' : ''}"></rect><rect y="7" width="16" height="2" rx="1" class="transform origin-center rotate-90 transition duration-200 ease-out ${isOpen ? 'rotate-180' : ''}"></rect></svg>'),
        ],
      ),
      div(
        styles: Styles(
          raw: {
            'max-height': isOpen ? '1000px' : '0',
            'opacity': isOpen ? '1' : '0'
          },
        ),
        classes: AppStyles.faqItemContent,
        [
          text(answer).div('pb-5 leading-relaxed'),
        ],
      ),
    ]);
  }
}
