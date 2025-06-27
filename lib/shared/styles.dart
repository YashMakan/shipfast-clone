// lib/styles.dart

class AppStyles {
  // General
  static const section = 'py-24 px-8';
  static const sectionLight = 'bg-base-200';
  static const sectionDark = 'bg-base-200';
  static const container = 'max-w-7xl mx-auto';
  static const container3xl = 'max-w-3xl mx-auto';

  // Header
  static const header = 'max-w-7xl mx-auto px-8 py-5 flex items-center';
  static const headerLogo = 'w-28 md:w-32';
  static const headerNav =
      'w-full flex items-center pl-12 md:pl-24 gap-4 md:gap-12';
  static const navLink = 'link link-hover';

  // Hero Section
  static const heroSection =
      'max-w-7xl mx-auto flex flex-col lg:flex-row items-center justify-center gap-16 lg:gap-20 lg:items-start px-8 py-8 lg:py-20 pb-20 lg:pb-24';
  static const heroContent =
      'flex flex-col gap-10 lg:gap-14 items-center justify-center text-center lg:text-left lg:items-start';
  static const heroTitle =
      'font-extrabold text-4xl lg:text-6xl tracking-tight md:-mb-4 flex flex-col gap-3 items-center lg:items-start';
  static const heroTitleHighlightWrapper = 'relative whitespace-nowrap';
  static const heroTitleHighlight =
      'absolute bg-neutral-content -left-2 -top-1 -bottom-1 -right-2 md:-left-3 md:-top-0 md:-bottom-0 md:-right-3 -rotate-1';
  static const heroTitleHighlightText = 'relative text-neutral';
  static const heroSubtitle = 'text-lg opacity-80 leading-relaxed';
  static const heroCtaButton =
      'btn btn-primary group btn-wide plausible-event-name=Checkout';
  static const heroCtaIcon =
      'w-5 h-5 fill-primary-content group-hover:scale-110 group-hover:-rotate-3 transition-transform duration-200 ease-in-out';
  static const heroUsers =
      'flex flex-col md:flex-row justify-center align-center gap-3';
  static const heroUsersAvatars = '-space-x-5 avatar-group justy-start';
  static const heroUsersAvatar = 'avatar w-12 h-12';
  static const heroRatingContainer =
      'flex flex-col justify-center items-center md:items-start gap-1';
  static const heroRatingStars = 'rating';
  static const starIcon = 'w-5 h-5 text-yellow-500';
  static const heroRatingText = 'text-base text-base-content/80';
  static const heroRatingTextBold = 'font-semibold text-base-content';
  static const heroImage = 'w-full max-w-xl ml-auto';
  static const salesBanner =
      'text-sm md:text-base flex justify-center items-center gap-2 md:text-sm';
  static const salesBannerIcon = 'w-5 h-5 fill-accent animate-pulse';

  // Testimonial Sections
  static const testimonialCard =
      'flex-col md:flex-row max-md:items-center flex gap-8 max-w-2xl mx-auto';
  static const testimonialImage =
      'w-80 rounded object-cover shadow md:brightness-90 hover:brightness-100 duration-100';
  static const testimonialContent = 'space-y-4 max-w-md mx-auto';
  static const testimonialQuoteIcon = 'w-7 md:w-8 fill-accent max-md:mx-auto';
  static const testimonialText =
      'md:text-lg leading-relaxed max-md:text-center';
  static const testimonialAuthorContainer =
      'flex items-center gap-2 max-md:justify-center';
  static const testimonialAuthorAvatar = 'w-10 h-10 rounded-full object-cover';
  static const testimonialBadgeContainer = 'max-md:flex max-md:justify-center';
  static const testimonialBadge = 'badge badge-accent badge-outline gap-1';

  // Featured On Section
  static const featuredOnContainer =
      'flex flex-wrap items-center justify-center gap-4 md:gap-8';
  static const featuredOnLabel = 'text-xs text-[10px] opacity-50';
  static const featuredOnLogo =
      'fill-base-content saturate-0 opacity-80 hover:opacity-100 hover:saturate-100 duration-100 cursor-pointer';

  // Pricing Section
  static const pricingCard = 'relative w-full';
  static const pricingCardContent =
      'h-full relative flex flex-col gap-5 lg:gap-8 z-10 p-8 rounded-lg bg-base-100';
  static const pricingCardTitle = 'text-lg lg:text-xl font-bold';
  static const pricingStrikethrough = 'relative opacity-80';
  static const pricingStrikethroughLine =
      'absolute bg-base-content h-[1.5px] inset-x-0 top-[48%]';

  static const pricingPrice = 'text-5xl tracking-tight font-extrabold';
  static const pricingFeatureList =
      'space-y-2.5 leading-relaxed text-base flex-1';
  static const pricingFeatureItem = 'flex items-center gap-2';
  static const checkmarkIcon = 'w-[18px] h-[18px] opacity-80 shrink-0';
  static const crossIcon = 'w-5 h-5 text-base-content/30 shrink-0';
  static const bundleBadge =
      'badge text-xs text-accent-content font-semibold border-0 bg-accent';
  static const bundleWrapper =
      'absolute -inset-[1px] rounded-[8px] bg-accent z-10';

  // FAQ Section
  static const faqContainer =
      'py-24 px-8 max-w-7xl mx-auto flex flex-col md:flex-row gap-12';
  static const faqTitle =
      'sm:text-4xl text-3xl font-extrabold text-base-content mb-8';
  static const faqSubtitle = 'text-base-content/80';
  static const faqItemButton =
      'relative flex gap-2 items-center w-full py-5 text-base font-semibold text-left border-t md:text-lg border-base-content/10';
  static const faqItemContent =
      'transition-all duration-300 ease-in-out opacity-80 overflow-hidden';

  // Footer
  static const footer = 'bg-base-200 border-t border-base-content/10';
  static const footerContainer = 'max-w-7xl mx-auto px-8 py-24';
  static const footerTitle =
      'footer-title font-semibold text-base-content tracking-widest text-sm md:text-left mb-3';
  static const footerLinksContainer =
      'flex flex-col justify-center items-center md:items-start gap-2 mb-10 text-sm';



  // Testimonials Wall
  static const testimonialWallContainer = 'py-24 px-4 max-w-7xl mx-auto';
  static const testimonialWallHeader = 'flex flex-col text-center w-full mb-20';
  static const testimonialWallTitle = 'sm:text-5xl text-4xl font-extrabold text-base-content';
  static const testimonialWallSubtitle = 'lg:w-2/3 mx-auto leading-relaxed text-base text-base-content/80';
  static const testimonialList = 'max-w-7xl mx-auto md:columns-2 lg:columns-3 xl:columns-4 space-y-4 md:space-y-6 md:gap-6';
  static const testimonialListItem = 'break-inside-avoid max-md:flex justify-center';

  // Testimonial Cards
  static const videoCardContainer = 'max-w-[550px] border border-base-content/20 rounded-xl';
  static const videoCardInner = 'relative w-full overflow-hidden rounded-t-xl';
  static const videoCardBanner = 'relative z-20 bg-primary text-primary-content text-lg font-medium p-4 leading-tight select-none rounded-b-xl';
  static const quoteCard = 'relative h-full w-full max-w-[550px] p-6 rounded-xl border border-base-content/20';
  static const quoteCardFigcaption = 'relative flex items-center justify-start gap-4 pt-4 mt-4 border-t border-base-content/10';
  static const quoteCardAvatar = 'w-10 h-10 rounded-full object-cover';
  static const quoteCardAuthorName = 'text-sm font-medium text-base-content';
  static const quoteCardAuthorHandle = 'mt-0.5 text-sm text-base-content/60';
  static const quoteHighlight = 'bg-primary text-primary-content px-0.5';

  // Tweet Card (using RawText, so minimal styling needed here)
  static const tweetCard = 'break-inside-avoid bg-transparent justify-center h-full max-md:flex';
}
