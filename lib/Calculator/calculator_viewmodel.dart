import 'package:calculator/app/app.locator.dart';
import 'package:calculator/services/calculator_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CalculatorViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final counterService = locator<CalculatorService>();
  
  get number1 => counterService.number1;
  get number2 => counterService.number2;
  get operand => counterService.operand;
  get themelight => counterService.themelight;
  

  onBtnTap(value) {
    counterService.onBtnTap(value);
    // Do not call rebuildUi() here
    rebuildUi();
  }

  calculate() {
    counterService.calculate();
    // Do not call rebuildUi() here
    rebuildUi();
  }

  clearAll() {
    counterService.clearAll();
    // Do not call rebuildUi() here
    rebuildUi();
  }

  delete() {
    counterService.delete();
    // Do not call rebuildUi() here
    rebuildUi();
  }

  appendValue(String value) {
    counterService.appendValue(value);
    rebuildUi();
  }


themecolor(value) {
 
counterService.themecolor(value);

rebuildUi();

}



  
  
}
