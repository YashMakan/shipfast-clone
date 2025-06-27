import 'package:jaspr/jaspr.dart';
import 'package:shipfast_clone/shared/utils.dart';

class LeaderboardButton extends StatelessWidget {
  const LeaderboardButton({super.key});

  @override
  Widget render(BuildContext context) {
    return Div(
        style: 'select-none max-lg:hidden z-[99] fixed top-6 right-6 bg-base-200 hover:bg-base-300 px-4 py-3 rounded-lg shadow-lg border border-base-content/20 hover:border-base-content/40 duration-200 cursor-pointer',
        child: Group(
            children: [
              Text('Press'),
              Span(
                  style: 'font-bold bg-base-100 px-2.5 py-1.5 rounded border border-base-content/20 font-mono mx-1 capitalize',
                  child: Text('L')
              ),
              Text('to see the Leaderboards'),
            ]
        )
    );
  }
}
