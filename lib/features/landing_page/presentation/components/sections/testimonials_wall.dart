// lib/landing_page.dart (or a new file like lib/components/testimonials.dart)

import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/components/figcaption.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/styles.dart';
import 'package:shipfast_clone/shared/svg_icons.dart'; // Assuming you have this

//region Data Models
abstract class TestimonialData {
  const TestimonialData();
}

class VideoTestimonialData extends TestimonialData {
  final String poster;
  final String videoSrc;
  final String author;
  final String quote;

  const VideoTestimonialData({
    required this.poster,
    required this.videoSrc,
    required this.author,
    required this.quote,
  });
}

class QuoteTestimonialData extends TestimonialData {
  final String? image;
  final List<Component> quote;
  final String authorName;
  final String? authorHandle;
  final String? authorAvatar;
  final String? reviewUrl;
  final String cardBgClass;

  const QuoteTestimonialData({
    this.image,
    required this.quote,
    required this.authorName,
    this.authorHandle,
    this.authorAvatar,
    this.reviewUrl,
    this.cardBgClass = 'bg-base-100',
  });
}

// Main Section Component
class TestimonialsWallSection extends StatelessComponent {
  const TestimonialsWallSection({super.key});

  // Data for all testimonials is managed here
  static final _testimonials = <TestimonialData>[
    VideoTestimonialData(
      poster: 'https://d1wkquwg5s1b04.cloudfront.net/landing/jack2.jpg',
      videoSrc: 'https://d1wkquwg5s1b04.cloudfront.net/landing/jack2.mp4',
      author: 'Jack F.',
      quote: 'I shipped in 6 days as a noob coder... This is awesome',
    ),
    QuoteTestimonialData(
      quote: [
        text(
            'Really easy to use. The tutorials are really useful and explains how everything works. Hope to ship my next project really fast!')
      ],
      authorName: 'Sergiu Chiriac',
      authorHandle: '@sergiu',
      authorAvatar: '/_next/static/media/sergiu.9d908463.jpeg',
      reviewUrl: 'https://www.producthunt.com/posts/shipfast-2?comment=2707228',
      cardBgClass: 'bg-[#2d1e1a]',
    ),
    // ... Add all other testimonials to this list
  ];

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(
      tag: 'section',
      id: 'testimonials',
      classes: AppStyles.sectionDark,
      children: [
        [
          [
            text('7240 makers built AI tools, SaaS, and more')
                .h2(AppStyles.testimonialWallTitle),
          ].div('mb-8'),
          text('They made their first \$ online, and some even quit their 9-5!')
              .p(AppStyles.testimonialWallSubtitle),
        ].div('flex flex-col text-center w-full mb-20'),
        [
          for (final testimonial in _testimonials)
            _buildTestimonial(testimonial).li(AppStyles.testimonialListItem)
        ].ul(AppStyles.testimonialList, attributes: {'role': 'list'}),
      ],
    );
  }

  Component _buildTestimonial(TestimonialData data) {
    if (data is VideoTestimonialData) {
      return _VideoTestimonial(data: data);
    }
    if (data is QuoteTestimonialData) {
      return _QuoteTestimonial(data: data);
    }
    return text('Unknown testimonial type');
  }
}

//region Testimonial Card Components
class _VideoTestimonial extends StatelessComponent {
  const _VideoTestimonial({required this.data});

  final VideoTestimonialData data;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield [
      [
        video(
          classes: 'w-full',
          poster: data.poster,
          preload: Preload.metadata,
          attributes: {'playsinline': ''},
          [
            source(src: data.videoSrc, type: 'video/mp4'),
            text('Your browser does not support the video tag.'),
          ],
        ),
        div([],
            classes:
                'absolute bottom-0 -inset-x-4 border bg-base-200/50 blur-lg h-24 translate-y-1/4 animate-opacity'),
        [
          [
            button(
              classes: 'group',
              type: ButtonType.button,
              attributes: {'title': 'Play video'},
              [
                playIcon(
                    'stroke-gray-50 group-hover:scale-[1.05] duration-100 ease-in drop-shadow-lg animate-opacity')
              ],
            ),
            [
              text(data.author).p('text-gray-50 font-medium drop-shadow'),
              [
                for (var i = 0; i < 5; i++)
                  starIcon('w-5 h-5 text-primary drop-shadow')
              ].div('rating'),
            ].div('animate-opacity text-right'),
          ].div('flex justify-between items-end p-4'),
        ].div('absolute w-full bottom-0 z-50'),
      ].div(AppStyles.videoCardInner),
      [text(data.quote)].div(AppStyles.videoCardBanner),
    ].div(AppStyles.videoCardContainer);
  }
}

class _QuoteTestimonial extends StatelessComponent {
  const _QuoteTestimonial({required this.data});

  final QuoteTestimonialData data;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield [
      blockquote(
        classes: 'relative',
        [data.quote.div('text-base xl:text-sm text-base-content')],
      ),
      figcaption([
        div([
          if (data.authorAvatar != null)
            img(
                src: data.authorAvatar!,
                alt: "${data.authorName}'s testimonial for ShipFast",
                classes: AppStyles.quoteCardAvatar)
          else
            text(data.authorName.substring(0, 1)).span(
                'w-10 h-10 rounded-full flex justify-center items-center text-lg font-medium bg-base-300'),
        ], classes: 'overflow-hidden rounded-full bg-base-300 shrink-0'),
        [
          div([
            text(data.authorName).div(AppStyles.quoteCardAuthorName),
            if (data.authorHandle != null)
              text(data.authorHandle!).div(AppStyles.quoteCardAuthorHandle),
          ]),
          if (data.reviewUrl != null)
            phIcon('w-6 h-6').a(
              'shrink-0',
              href: data.reviewUrl ?? '',
              target: '_blank',
              attributes: {'aria-label': 'See user review on Product Hunt'},
            ),
        ].div('w-full flex items-end justify-between gap-2'),
      ], classes: AppStyles.quoteCardFigcaption),
    ].figure('${AppStyles.quoteCard} ${data.cardBgClass}');
  }
}

