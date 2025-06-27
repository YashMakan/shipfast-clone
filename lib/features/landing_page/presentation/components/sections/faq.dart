import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/features/landing_page/domain/models/faq.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/styles.dart';
import 'package:shipfast_clone/shared/utils.dart';

class FaqSection extends StatefulWidget {
  const FaqSection({super.key});

  @override
  State<FaqSection> createState() => _FaqSectionState();
}

class _FaqSectionState extends WidgetState<FaqSection> {
  final List<FaqModel> faqs = defaultFaqs;

  String? openFaqId;

  @override
  Component render(BuildContext context) {
    return Section(
      id: 'faq',
      style: AppStyles.sectionDark,
      child: Div(
        style: AppStyles.faqContainer,
        child: Group(children: [
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
                id: faq.id,
                question: faq.question,
                answer: faq.answer,
                isOpen: openFaqId == faq.id,
                onToggle: () => setState(() {
                  openFaqId = (openFaqId == faq.id) ? null : faq.id;
                }),
              )
          ].ul('basis-1/2'),
        ])
      ),
    );
  }
}

class _FaqItem extends StatelessComponent {
  const _FaqItem({
    required this.id,
    required this.question,
    required this.answer,
    required this.isOpen,
    required this.onToggle,
  });

  final String id;
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
          text(question).span('flex-1 text-base-content ${isOpen ? 'text-primary' : ''}'),
          RawText(
              '<svg class="flex-shrink-0 w-4 h-4 ml-auto fill-current" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg"><rect y="7" width="16" height="2" rx="1" class="transform origin-center transition duration-200 ease-out ${!isOpen ? 'rotate-180' : ''}"></rect><rect y="7" width="16" height="2" rx="1" class="transform origin-center rotate-90 transition duration-200 ease-out ${!isOpen ? 'rotate-180' : ''}"></rect></svg>'),
        ],
      ),
      div(
        styles: Styles(
          raw: {
            'max-height': isOpen ? '1000px' : '0',
            'opacity': isOpen ? '1' : '0',
          },
        ),
        classes: AppStyles.faqItemContent,
        [
          text(answer).div('pb-5 leading-relaxed whitespace-pre-line'),
        ],
      ),
    ]);
  }
}
