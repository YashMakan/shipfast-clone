import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/features/landing_page/presentation/components/_components.dart';
import 'package:shipfast_clone/features/landing_page/presentation/components/leaderboard_button.dart';
import 'package:shipfast_clone/shared/utils.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Component render(BuildContext context) {
    return Group(children: [
      PageHeader(),
      LeaderboardButton(),
      MainContent(),
      PageFooter(),
    ]);
  }
}
