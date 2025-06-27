import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/svg_icons.dart';

import 'integration.dart';

class Feature {
  final int id;
  final String title;
  final Component Function(String) icon;
  final List<String> content;
  final String timeSaved;
  final List<Integration> integrations;

  Feature({
    required this.id,
    required this.title,
    required this.icon,
    required this.content,
    required this.timeSaved,
    required this.integrations,
  });
}

List<Feature> get defaultFeatures => List.generate(
  6,
      (i) => Feature(
    id: i,
    title: 'Emails',
    icon: emailIcon,
    content: [
      'Send transactional emails',
      'DNS setup to avoid spam folder (DKIM, DMARC, SPF in subdomain)',
      'Webhook to receive & forward emails',
    ],
    timeSaved: '3 hours',
    integrations: [
      Integration(
        name: 'Mailgun',
        logo: 'assets/mailgun.459dea11.png',
        url: 'https://www.mailgun.com/',
      ),
      Integration(
        name: 'Resend',
        logo: 'assets/resend_square.ad1418c0.png',
        url: 'https://resend.com/',
      ),
    ],
  ),
);