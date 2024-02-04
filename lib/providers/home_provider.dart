import 'package:fluent_ui/fluent_ui.dart';

class HomeProvider extends ChangeNotifier {
  List<NavigationPaneItem> controllers = [];
  int selectedIndex = 0;

  HomeProvider() {
    addControllers();
  }

  void addControllers() {
    for (int i = 1; i <= 4; i++) {
      controllers.add(
        PaneItem(
          icon: const Icon(FluentIcons.game),
          title: Text('Controller $i'),
          body: Column(
            children: [
              FilledButton(
                child: const Text("Get Device"),
                onPressed: () {},
              )
            ],
          ),
        ),
      );
      notifyListeners();
    }
  }

  void changeTab(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
