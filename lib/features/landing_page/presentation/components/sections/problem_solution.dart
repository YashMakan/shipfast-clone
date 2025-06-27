import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/svg_icons.dart';
import 'package:shipfast_clone/shared/utils.dart';

class ProblemSolutionSection extends StatelessWidget {
  const ProblemSolutionSection({super.key});

  // Styles
  static const sectionStyle = 'relative py-24 px-8';
  static const containerStyle =
      'relative bg-neutral text-neutral-content rounded-lg p-8 md:p-16 max-w-lg mx-auto text-center text-lg';
  static const textBlockStyle = 'text-neutral-content/80 space-y-1';
  static const innerBlockStyle = 'leading-relaxed space-y-4 md:space-y-6';
  static const footerStyle =
      'absolute bottom-8 inset-x-0 text-center flex gap-1 justify-center items-center text-sm opacity-80';
  static const highlightStyle = 'text-red-400 font-medium';
  static const footerTextStyle = 's'; // as per original code

  @override
  Component render(BuildContext context) {
    return Section(
      style: sectionStyle,
      child: Group(
        children: [
          Div(
            style: containerStyle,
            child: Div(
              style: innerBlockStyle,
              child: Div(
                style: textBlockStyle,
                child: Group(
                  children: [
                    _timeText('4 hrs', ' to set up emails'),
                    _timeText('6 hrs', ' designing a landing page'),
                    _timeText('4 hrs', ' to handle Stripe webhooks'),
                    _timeText('2 hrs', ' for SEO tags'),
                    _timeText('1 hr', ' applying for Google Oauth'),
                    _timeText('3 hrs', ' for DNS records'),
                    _timeText('2 hrs', ' for protected API routes'),
                    _timeText('∞ hrs', ' overthinking...'),
                  ],
                ),
              ),
            ),
          ),
          Div(
            style: footerStyle,
            child: Group(
              children: [
                downArrowIcon('w-5 h-5'),
                Text('There\'s an easier way').p(footerTextStyle),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Component _timeText(String time, String description) {
    return Group(
      children: [
        Text(time).span(highlightStyle),
        Text(description),
      ],
    ).p();
  }
}
