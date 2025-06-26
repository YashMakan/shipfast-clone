import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/app.dart';
import 'package:shipfast_clone/shared/jaspr_options.dart';

void main() {
  Jaspr.initializeApp(options: defaultJasprOptions);
  runApp(App());
}
