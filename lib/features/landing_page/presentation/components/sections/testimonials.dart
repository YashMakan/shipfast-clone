import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/styles.dart';
import 'package:shipfast_clone/shared/svg_icons.dart';
import 'package:shipfast_clone/shared/utils.dart';

class TestimonialSection1 extends StatelessWidget {
  const TestimonialSection1({super.key});

  static const sectionStyle = 'p-8 md:p-12 space-y-16';
  static const cardStyle = AppStyles.testimonialCard;
  static const imageStyle = AppStyles.testimonialImage;
  static const contentStyle = AppStyles.testimonialContent;
  static const quoteIconStyle = AppStyles.testimonialQuoteIcon;
  static const textStyle = AppStyles.testimonialText;
  static const authorContainerStyle = AppStyles.testimonialAuthorContainer;
  static const authorAvatarStyle = AppStyles.testimonialAuthorAvatar;
  static const badgeContainerStyle = AppStyles.testimonialBadgeContainer;
  static const badgeStyle = AppStyles.testimonialBadge;

  @override
  Component render(BuildContext context) {
    return Section(
      style: sectionStyle,
      child: Div(
        style: cardStyle,
        child: Group(
          children: [
            Image(
              src: 'assets/mrr.png',
              alt: 'PostBridge MRR screenshot',
              style: imageStyle,
            ),
            Div(
              style: contentStyle,
              child: Group(
                children: [
                  quoteIcon(quoteIconStyle),
                  Text(
                    'Without ShipFast I might have never launched my SaaS and I would still be at \$0 MRR.',
                  ).p(textStyle),
                  Div(
                    style: authorContainerStyle,
                    child: Group(
                      children: [
                        Image(
                          src: 'assets/jackpfp.38e84582.png',
                          alt: 'Jack Friks testimonial for ShipFast',
                          style: authorAvatarStyle,
                        ),
                        Text('Jack Friks').p(''),
                      ],
                    ),
                  ),
                  Div(
                    style: badgeContainerStyle,
                    child: Span(
                      style: badgeStyle,
                      child: Group(
                        children: [
                          Text('Built '),
                          Text('post-bridge.com').span('select-all'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
