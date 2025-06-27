import 'package:jaspr/jaspr.dart';

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

List<TestimonialData> defaultTestimonials = <TestimonialData>[
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