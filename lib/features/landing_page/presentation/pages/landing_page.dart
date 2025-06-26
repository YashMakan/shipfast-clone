import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/features/landing_page/presentation/components/footer.dart';
import 'package:shipfast_clone/features/landing_page/presentation/components/header.dart';
import 'package:shipfast_clone/features/landing_page/presentation/components/main_content.dart';
import 'package:shipfast_clone/shared/utils.dart';

class LandingPage extends StatelessWidget {
  LandingPage({super.key});

  @override
  Component build(BuildContext context) {
    return Column(children: [
      Header(),
      MainContent(),
      Footer(),
    ]);
  }
}
