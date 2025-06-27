class FaqModel {
  final String id;
  final String question;
  final String answer;

  const FaqModel({
    required this.id,
    required this.question,
    required this.answer,
  });
}

List<FaqModel> defaultFaqs = [
  FaqModel(
    id: 'q1',
    question: 'What do I get exactly?',
    answer:
    '''1/ The NextJS starter with all the boilerplate code you need to run an online business: a payment system, a database, login, a blog, UI components, and much more.
The repo is available in:
- Javascript and Typescript
- /app router and /pages router.

2/ The documentation helps you set up your app from scratch, write copy that sells, and ship fast.

3/ With the Premium plan, access to our Discord with 5,000+ makers, the Leaderboards to showcase your startup, and \$1,210 worth of unique discounts.''',
  ),
  FaqModel(
    id: 'q2',
    question: 'What are the ShipFast Leaderboards?',
    answer:
    '''The Leaderboards are a fun way to showcase your startup.

Startups are ranked by revenue (verified by Stripe), so you can see who's making the most money.

Leaderboards also help you gain exposure by showing your startup to thousands of entrepreneurs who visit the leaderboards page every month.''',
  ),
  FaqModel(
    id: 'q3',
    question: 'What are the ShipFast Discounts?',
    answer:
    '''\$1,210 worth of unique discounts for ShipFast members. I partner with the following companies to give you discounts on their products:
- Rewardful — 30% OFF for 3 months
- There\'s An AI For That — \$200 ads credit
- daisyUI — 50% OFF
- DataFast — 30% OFF on all plans
- Typefully — 30% OFF for 1 year
- Vercel — \$100/mo off for 6 months (10 winners/month)
- Resend — \$100/mo off for 6 months (10 winners/month)
- MakerAdsGuide — 60% OFF
- SEO Course — 20% OFF

Most of these discounts are for marketing tools and services to help you acquire customers and generate revenue faster.''',
  ),
  FaqModel(
    id: 'q4',
    question: 'Does ShipFast work with AI (Cursor, Copilot)?',
    answer:
    '''It does not only work with AI, it's built for it.

ShipFast comes with a complete codebase—which gives your AI code editor real context to build full features in seconds.

You can just ask your AI to build the feature you need, and it will generate the code for you, using the naming convention, file structure, and best practices you're used to.''',
  ),
  FaqModel(id: 'q5', question: 'Javascript or Typescript?', answer: 'Both! You can choose once you get access'),
  FaqModel(id: 'q6', question: '/app router or /pages router?', answer: 'Both! You can choose once you get access'),
  FaqModel(
    id: 'q7',
    question: 'My tech stack is different, can I still use it?',
    answer:
    '''Yes, as long as you're comfortable with React & NextJS.

Libraries are independent. You can use SendGrid instead of Mailgun, LemonSqueezy instead of Stripe, or Postgres instead of MongoDB, for instance.''',
  ),
  FaqModel(
    id: 'q8',
    question: 'Is it a website template?',
    answer:
    '''It's more than just a template. You can copy/paste sections to build your site quickly, like a pricing section, an FAQ, and even an entire blog. You also get a bunch of UI components like buttons, modals, popovers, etc.

The NextJS starter also comes with handy tools you need to run an online business—payment processing, emails, SEO, etc.''',
  ),
  FaqModel(
    id: 'q9',
    question: 'Is ShipFast better than other boilerplates?',
    answer:
    '''Customers do NOT buy code.

Customers buy a life transformation.

They ship startups. Every week. And they make \$ from it (see for yourself).''',
  ),
  FaqModel(
    id: 'q10',
    question: 'Is ShipFast better than AI tools like Lovable or Bolt?',
    answer:
    '''Lovable and Bolt are great tools if you want to build a landing page quickly.

But they don't help you ship a startup.
- ShipFast is a complete startup boilerplate. It comes with a payment system, a database, login, battle-tested UI components, and much more.
- It gives your AI code editor real context to build full features in seconds.
- Reuse ShipFast across projects so you're not wasting time relearning a new setup.''',
  ),
  FaqModel(
    id: 'q11',
    question: 'Are there any other costs associated?',
    answer:
    '''Many hosting platforms, like Vercel, let you host a project for free (front-end + back-end) and MongoDB/Supabase have free tiers — so you can launch for first app for \$0/month.

If you use Magic Link sign-ups, you'll spend \$1 per 1,000 users.''',
  ),
  FaqModel(
    id: 'q12',
    question: 'How often is ShipFast updated?',
    answer:
    '''I ship like a madman & use ShipFast for all my projects, so I'm updating it regularly. Last update 5 months ago.''',
  ),
  FaqModel(
    id: 'q13',
    question: 'Can I get a refund?',
    answer:
    '''After you've got access to the repo, ShipFast is yours forever, so it can't be refunded.

But rest assured, users of ShipFast ship startups in 7 days on average and make their first \$ online in record time.''',
  ),
  FaqModel(
    id: 'q14',
    question: 'Can I use PayPal?',
    answer:
    '''Yes! You can send over the USD equivalent of the plan you want to purchase (\$199 or \$249 or \$299) to my PayPal account: paypal.me/marclouvion

Once done, please email me your GitHub username so I can give you access to the repo.

Please allow a few hours to get access.

135k people trust me on Twitter. I'm not running away with the money 😊''',
  ),
];