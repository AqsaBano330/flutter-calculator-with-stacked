import 'package:stacked/stacked.dart';

class ThemeViewModel extends BaseViewModel {
  bool isDarkMode = false;

  void toggleTheme() {
    isDarkMode = !isDarkMode;
    print(isDarkMode);

    // Assuming you want to trigger a rebuild after changing the theme
    rebuildUi();
  }
}
