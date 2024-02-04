import 'package:controller_pro/providers/home_provider.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: const NavigationAppBar(
        title: Text(
          "Controller Pro",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      pane: NavigationPane(
        selected: context.watch<HomeProvider>().selectedIndex,
        items: context.watch<HomeProvider>().controllers,
        onChanged: (value) => {
          context.read<HomeProvider>().changeTab(value),
        },
      ),
    );
  }
}
