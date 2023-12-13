import 'package:stacked/stacked.dart';
import 'package:stacked_app_new/app/app.router.dart';
import 'package:stacked_app_new/services/counter_service.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';

class ProfileViewModel extends BaseViewModel {
  final counterService = locator<CounterService>();
   final navigationService = locator<NavigationService>();

  get counterValue => 'Counter Value Profile Screen ${counterService.counter}';


gotohomeScreen() {
    navigationService.navigateToHomeView();
  }

 

  addValue() {
    counterService.addCounterValue();
    rebuildUi();
  }
}


