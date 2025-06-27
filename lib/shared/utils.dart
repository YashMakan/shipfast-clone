import 'package:jaspr/jaspr.dart';

class StatelessWidget {
  final Key? key;

  StatelessWidget({this.key});

  Component build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  Component component(context)  {
    return build(context);
  }
}

class Column extends StatelessComponent {
  final List<Component> children;

  Column({required this.children});

  @override
  Iterable<Component> build(BuildContext context) {
    return children;
  }
}
