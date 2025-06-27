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
      '1/ The NextJS starter with all the boilerplate code you need to run an online business: a payment system, a database, login, a blog, UI components, and much more.\nThe repo is available in:\n- Javascript and Typescript\n- /app router and /pages router.\n\n2/ The documentation helps you set up your app from scratch, write copy that sells, and ship fast.\n\n3/ With the Premium plan, access to our Discord with 5,000+ makers, the Leaderboards to showcase your startup, and \$1,210 worth of unique discounts.'
    },
    {
      'q': 'What are the ShipFast Leaderboards?',
      'a':
      "The Leaderboards are a fun way to showcase your startup.\n\nStartups are ranked by revenue (verified by Stripe), so you can see who's making the most money.\n\nLeaderboards also help you gain exposure by showing your startup to thousands of entrepreneurs who visit the leaderboards page every month."
    },
    {
      'q': 'What are the ShipFast Discounts?',
      'a':
      "\$1,210 worth of unique discounts for ShipFast members. I partner with the following companies to give you discounts on their products:\n- Rewardful — 30% OFF for 3 months\n- There's An AI For That — \$200 ads credit\n- daisyUI — 50% OFF\n- DataFast — 30% OFF on all plans\n- Typefully — 30% OFF for 1 year\n- Vercel — \$100/mo off for 6 months (10 winners/month)\n- Resend — \$100/mo off for 6 months (10 winners/month)\n- MakerAdsGuide — 60% OFF\n- SEO Course — 20% OFF\n\nMost of these discounts are for marketing tools and services to help you acquire customers and generate revenue faster."
    },
    {
      'q': 'Does ShipFast work with AI (Cursor, Copilot)?',
      'a':
      "It does not only work with AI, it's built for it.\n\nShipFast comes with a complete codebase—which gives your AI code editor real context to build full features in seconds.\n\nYou can just ask your AI to build the feature you need, and it will generate the code for you, using the naming convention, file structure, and best practices you're used to."
    },
    {
      'q': 'Javascript or Typescript?',
      'a': 'Both! You can choose once you get access'
    },
    {
      'q': '/app router or /pages router?',
      'a': 'Both! You can choose once you get access'
    },
    {
      'q': 'My tech stack is different, can I still use it?',
      'a':
      "Yes, as long as you're comfortable with React & NextJS.\n\nLibraries are independent. You can use SendGrid instead of Mailgun, LemonSqueezy instead of Stripe, or Postgres instead of MongoDB, for instance."
    },
    {
      'q': 'Is it a website template?',
      'a':
      "It's more than just a template. You can copy/paste sections to build your site quickly, like a pricing section, an FAQ, and even an entire blog. You also get a bunch of UI components like buttons, modals, popovers, etc.\n\nThe NextJS starter also comes with handy tools you need to run an online business—payment processing, emails, SEO, etc."
    },
    {
      'q': 'Is ShipFast better than other boilerplates?',
      'a':
      "Customers do NOT buy code.\n\nCustomers buy a life transformation.\n\nThey ship startups. Every week. And they make \$ from it (see for yourself)."
    },
    {
      'q': 'Is ShipFast better than AI tools like Lovable or Bolt?',
      'a':
      "Lovable and Bolt are great tools if you want to build a landing page quickly.\n\nBut they don't help you ship a startup.\n- ShipFast is a complete startup boilerplate. It comes with a payment system, a database, login, battle-tested UI components, and much more.\n- It gives your AI code editor real context to build full features in seconds.\n- Reuse ShipFast across projects so you're not wasting time relearning a new setup."
    },
    {
      'q': 'Are there any other costs associated?',
      'a':
      "Many hosting platforms, like Vercel, let you host a project for free (front-end + back-end) and MongoDB/Supabase have free tiers — so you can launch for first app for \$0/month.\n\nIf you use Magic Link sign-ups, you'll spend \$1 per 1,000 users."
    },
    {
      'q': 'How often is ShipFast updated?',
      'a':
      "I ship like a madman & use ShipFast for all my projects, so I'm updating it regularly. Last update 5 months ago."
    },
    {
      'q': 'Can I get a refund?',
      'a':
      "After you've got access to the repo, ShipFast is yours forever, so it can't be refunded.\n\nBut rest assured, users of ShipFast ship startups in 7 days on average and make their first \$ online in record time."
    },
    {
      'q': 'Can I use PayPal?',
      'a':
      "Yes! You can send over the USD equivalent of the plan you want to purchase (\$199 or \$249 or \$299) to my PayPal account: paypal.me/marclouvion\n\nOnce done, please email me your GitHub username so I can give you access to the repo.\n\nPlease allow a few hours to get access.\n\n135k people trust me on Twitter. I'm not running away with the money 😊"
    }
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
              '<svg class="flex-shrink-0 w-4 h-4 ml-auto fill-current" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg"><rect y="7" width="16" height="2" rx="1" class="transform origin-center transition duration-200 ease-out ${!isOpen ? 'rotate-180' : ''}"></rect><rect y="7" width="16" height="2" rx="1" class="transform origin-center rotate-90 transition duration-200 ease-out ${!isOpen ? 'rotate-180' : ''}"></rect></svg>'),
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
