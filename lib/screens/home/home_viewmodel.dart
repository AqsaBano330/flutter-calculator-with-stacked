import 'package:stacked/stacked.dart';
import 'package:stacked_app_new/app/app.locator.dart';
import 'package:stacked_app_new/app/app.router.dart';
import 'package:stacked_app_new/services/counter_service.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final navigatioService = locator<NavigationService>();
  final counterService = locator<CounterService>();

  get counterValue => 'Counter Value ${counterService.counter}';

  gotoProfileScreen() {
    navigatioService.navigateToProfileView();
  }

  addValue() {
    counterService.addCounterValue();
    rebuildUi();
  }
}
