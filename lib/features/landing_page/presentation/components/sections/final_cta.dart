import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/styles.dart';
import 'package:shipfast_clone/shared/svg_icons.dart';
import 'package:shipfast_clone/shared/utils.dart';

class FinalCtaSection extends StatelessWidget {
  const FinalCtaSection({super.key});

  static const _sectionStyle = AppStyles.sectionLight;
  static const _containerStyle =
      'pb-32 pt-16 px-8 max-w-3xl mx-auto flex flex-col items-center gap-8 md:gap-12';
  static const _textCenterStyle = 'text-center';
  static const _headingStyle =
      'relative font-bold text-3xl md:text-5xl tracking-tight mt-4 mb-4 md:mb-8';
  static const _paragraphStyle = 'relative text-lg text-base-content/80';
  static const _buttonStyle = AppStyles.heroCtaButton;
  static const _iconStyle = AppStyles.heroCtaIcon;

  @override
  Component render(BuildContext context) {
    return Section(
      style: _sectionStyle,
      child: Div(
        style: _containerStyle,
        child: Group(
          children: [
            Div(
              style: _textCenterStyle,
              child: Group(
                children: [
                  H2(
                    style: _headingStyle,
                    child: Text('Boost your app, launch, earn'),
                  ),
                  Paragraph(
                    style: _paragraphStyle,
                    child: Text(
                      'Don\'t waste time on Stripe subscriptions or designing a pricing section...',
                    ),
                  ),
                ],
              ),
            ),
            Button(
              style: _buttonStyle,
              child: Group(
                children: [
                  boltIcon(_iconStyle),
                  Text('Get ShipFast'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
