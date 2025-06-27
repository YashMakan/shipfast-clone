import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'package:shipfast_clone/features/landing_page/presentation/pages/landing_page.dart';

class App extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Router(routes: [
      Route(path: '/', builder: (context, state) => LandingPage()),
    ]);
  }
}
