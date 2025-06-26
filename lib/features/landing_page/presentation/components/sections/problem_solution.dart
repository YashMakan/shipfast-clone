import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/extensions.dart';
import 'package:shipfast_clone/shared/svg_icons.dart';

class ProblemSolutionSection extends StatelessComponent {
  const ProblemSolutionSection({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(
      tag: 'section',
      classes: 'relative py-24 px-8',
      children: [
        [
          [
            [
              [
                text('4 hrs').span('text-red-400 font-medium'),
                text(' to set up emails'),
              ].p(''),
              // ... more problem lines
              [
                text('∞ hrs').span('text-red-400 font-medium'),
                text(' overthinking...'),
              ].p(''),
            ].div('text-neutral-content/80 space-y-1'),
            [
              [
                text('= '),
                text('22+ hours').span('text-red-400 font-medium'),
                text(' of headaches'),
              ].p(''),
              // ... bolt icon
            ].div(
                'text-xl font-semibold flex flex-col md:flex-row items-center justify-center gap-3'),
          ].div('leading-relaxed space-y-4 md:space-y-6'),
        ].div(
            'relative bg-neutral text-neutral-content rounded-lg p-8 md:p-16 max-w-lg mx-auto text-center text-lg'),
        [
          // ... down arrow icon
          downArrowIcon('w-5 h-5'),
          text('There\'s an easier way').p('s'),
        ].div(
            'absolute bottom-8 inset-x-0 text-center flex gap-1 justify-center items-center text-sm opacity-80'),
      ],
    );
  }
}
