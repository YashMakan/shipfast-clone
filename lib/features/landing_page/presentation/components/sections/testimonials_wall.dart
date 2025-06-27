import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/features/landing_page/domain/models/testimonial_data.dart';
import 'package:shipfast_clone/shared/styles.dart';
import 'package:shipfast_clone/shared/svg_icons.dart';
import 'package:shipfast_clone/shared/utils.dart';

class TestimonialsWallSection extends StatelessWidget {
  const TestimonialsWallSection({super.key});

  static const _sectionClass = AppStyles.sectionDark;
  static const _headerWrapperClass = 'flex flex-col text-center w-full mb-20';
  static const _titleClass = AppStyles.testimonialWallTitle;
  static const _subtitleClass = AppStyles.testimonialWallSubtitle;
  static const _listClass = AppStyles.testimonialList;
  static const _itemClass = AppStyles.testimonialListItem;

  static final _testimonials = defaultTestimonials;

  @override
  Component render(BuildContext context) {
    return Section(
      id: 'testimonials',
      style: _sectionClass,
      child: Group(children: [
        Div(
          style: _headerWrapperClass,
          child: Group(children: [
            Div(
              style: 'mb-8',
              child: H2(
                style: _titleClass,
                child: Text('7240 makers built AI tools, SaaS, and more'),
              ),
            ),
            Paragraph(
              style: _subtitleClass,
              child: Text(
                  'They made their first \$ online, and some even quit their 9-5!'),
            ),
          ]),
        ),
        UnorderedList(
          style: _listClass,
          attributes: {'role': 'list'},
          children: [
            for (final testimonial in _testimonials)
              ListItem(
                style: _itemClass,
                child: _buildTestimonial(testimonial),
              ),
          ],
        ),
      ]),
    );
  }

  Component _buildTestimonial(TestimonialData data) {
    if (data is VideoTestimonialData) {
      return _VideoTestimonial(data: data);
    }
    if (data is QuoteTestimonialData) {
      return _QuoteTestimonial(data: data);
    }
    return Text('Unknown testimonial type');
  }
}

class _VideoTestimonial extends StatelessWidget {
  const _VideoTestimonial({required this.data});

  final VideoTestimonialData data;

  @override
  Component render(BuildContext context) {
    return Div(
      style: AppStyles.videoCardContainer,
      child: Group(children: [
        Div(
          style: AppStyles.videoCardInner,
          child: Group(children: [
            Video(
              style: 'w-full',
              poster: Uri.parse(data.poster),
              preload: Preload.metadata,
              attributes: {'playsinline': ''},
              source: Uri.parse(data.videoSrc),
            ),
            Div(
                style:
                    'absolute bottom-0 -inset-x-4 border bg-base-200/50 blur-lg h-24 translate-y-1/4 animate-opacity'),
            Div(
              style: 'absolute w-full bottom-0 z-50',
              child: Group(children: [
                Div(
                  style: 'flex justify-between items-end p-4',
                  child: Group(children: [
                    Button(
                      style: 'group',
                      type: ButtonType.button,
                      attributes: {'title': 'Play video'},
                      child: playIcon(
                        'stroke-gray-50 group-hover:scale-[1.05] duration-100 ease-in drop-shadow-lg animate-opacity',
                      ),
                    ),
                    Div(
                      style: 'animate-opacity text-right',
                      child: Group(children: [
                        Paragraph(
                          style: 'text-gray-50 font-medium drop-shadow',
                          child: Text(data.author),
                        ),
                        Div(
                          style: 'rating',
                          child: Group(
                            children: List.generate(
                              5,
                              (_) =>
                                  starIcon('w-5 h-5 text-primary drop-shadow'),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ]),
                ),
              ]),
            ),
          ]),
        ),
        Div(
          style: AppStyles.videoCardBanner,
          child: Text(data.quote),
        ),
      ]),
    );
  }
}

class _QuoteTestimonial extends StatelessWidget {
  const _QuoteTestimonial({required this.data});

  final QuoteTestimonialData data;

  @override
  Component render(BuildContext context) {
    return Figure(
      style: '${AppStyles.quoteCard} ${data.cardBgClass}',
      child: Group(children: [
        BlockQuote(
          style: 'relative',
          child: Div(
            style: 'text-base xl:text-sm text-base-content',
            child: Group(children: data.quote),
          ),
        ),
        Figcaption(
          style: AppStyles.quoteCardFigcaption,
          child: Group(children: [
            Div(
                style: 'overflow-hidden rounded-full bg-base-300 shrink-0',
                child: Group(children: [
                  if (data.authorAvatar != null)
                    Image(
                      src: data.authorAvatar!,
                      alt: "${data.authorName}'s testimonial for ShipFast",
                      style: AppStyles.quoteCardAvatar,
                    )
                  else
                    Span(
                      style:
                          'w-10 h-10 rounded-full flex justify-center items-center text-lg font-medium bg-base-300',
                      child: Text(data.authorName.substring(0, 1)),
                    ),
                ])),
            Div(
                style: 'w-full flex items-end justify-between gap-2',
                child: Group(children: [
                  Div(
                      child: Group(children: [
                    Div(
                      style: AppStyles.quoteCardAuthorName,
                      child: Text(data.authorName),
                    ),
                    if (data.authorHandle != null)
                      Div(
                        style: AppStyles.quoteCardAuthorHandle,
                        child: Text(data.authorHandle!),
                      ),
                  ])),
                  if (data.reviewUrl != null)
                    Link(
                      href: data.reviewUrl!,
                      target: Target.blank,
                      attributes: {
                        'aria-label': 'See user review on Product Hunt',
                      },
                      style: 'shrink-0',
                      child: phIcon('w-6 h-6'),
                    ),
                ])),
          ]),
        ),
      ]),
    );
  }
}
