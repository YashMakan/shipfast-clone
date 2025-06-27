import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/utils.dart';

class DemoSection extends StatelessWidget {
  const DemoSection({super.key});

  // Styles
  static const sectionStyle = 'bg-base-100';
  static const containerStyle = 'py-24 max-md:px-8 max-w-3xl mx-auto';
  static const avatarStyle =
      'w-32 h-32 md:w-52 md:h-52 rounded-lg float-left mr-8 mb-8 object-center object-cover';
  static const textStyle = 'mb-4 text-base-content md:text-lg font-medium';
  static const paragraphWrap =
      'leading-relaxed text-base-content/80 mb-12 max-w-xl mx-auto';
  static const videoWrapper =
      'relative w-full aspect-video overflow-hidden sm:rounded-lg';
  static const iframeStyle = 'absolute inset-0 w-full h-full';

  @override
  Component render(BuildContext context) {
    return Section(
      id: 'demo',
      style: sectionStyle,
      child: Div(
        style: containerStyle,
        child: Group(
          children: [
            Div(
              style: paragraphWrap,
              child: Group(
                children: [
                  Image(
                    src: 'assets/maker.png',
                    alt: 'Marc Lou — Product Hunt Maker of the Year 2023',
                    style: avatarStyle,
                  ),
                  Text('Hey, it\'s Marc 👋').p(textStyle),
                  Text('Hey, it\'s Marc 👋').p(textStyle),
                ],
              ),
            ),
            Div(
              style: videoWrapper,
              child: DomComponent(
                tag: 'iframe',
                classes: iframeStyle,
                attributes: {
                  'src': 'https://www.youtube.com/embed/W3Pb3v_GpoE',
                  'title': 'ShipFast tutorial',
                  'frameborder': '0',
                  'allow':
                      'accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share',
                  'allowfullscreen': '',
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
