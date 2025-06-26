import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/features/landing_page/presentation/pages/landing_page.dart';

class App extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) {
    return LandingPage().component(context);
  }
}
