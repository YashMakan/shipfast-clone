import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/utils.dart';

class FeatureTab extends StatelessWidget {
  const FeatureTab({
    required this.title,
    required this.iconBuilder,
    required this.isSelected,
    required this.onPressed,
  });

  final String title;
  final Component Function(String) iconBuilder;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Component render(BuildContext context) {
    final tabClass =
        'flex flex-col items-center justify-center gap-3 select-none cursor-pointer p-2 duration-100 ${isSelected ? 'text-primary' : 'text-base-content/50'}';

    return Span(
      style: tabClass,
      events: {'click': (_) => onPressed()},
      child: Group(
        children: [
          iconBuilder('w-8 h-8'),
          Text(title).span('font-medium text-sm'),
        ],
      ),
    );
  }
}