import 'package:calculator/Calculator/calculator_view.dart';
import 'package:calculator/services/calculator_service.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: CalculatorView, initial: true),
  ],
  dependencies: [
    Singleton(classType: NavigationService),
    LazySingleton(classType: CalculatorService),
     
  ],
)
class App {}