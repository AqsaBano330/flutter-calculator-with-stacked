import 'package:calculator/Calculator/calculator_viewmodel.dart';
import 'package:calculator/constant/btn.dart';
import 'package:calculator/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key,});

  

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => CalculatorViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0.0, 
            //surfaceTintColor: viewModel.themecolor(true).bgcolor,
            //shadowColor: AppColors.whitrecolor,
            //iconTheme: IconThemeData(color: AppColors.tealcolor),
            backgroundColor: Colors.white,
            title: Text(
              "Calculator",
              style: TextStyle(color: Colors.green),
            ),
          ),
          body: SafeArea(
            bottom: false,
            child: Column(
              children: [
                // Output
                Expanded(
                  child: SingleChildScrollView(
                    reverse: true,
                    child: Container(
                      alignment: Alignment.bottomRight,
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        "${viewModel.number1}${viewModel.operand}${viewModel.number2}".isEmpty
                            ? "0"
                            : "${viewModel.number1}${viewModel.operand}${viewModel.number2}",
                        style: const TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                ),
    
                // Buttons
                Wrap(
                  children: Btn.buttonValues
                      .map(
                        (value) => SizedBox(
                          width: value == Btn.n0
                              ? screenSize.width / 2
                              : (screenSize.width / 4),
                          height: screenSize.width / 5,
                          child:Padding(
      padding: const EdgeInsets.all(4.0),
      child: Material(
        color: [Btn.del, Btn.clr].contains(value)
        ? Colors.blueGrey
        : [
            Btn.per,
            Btn.multiply,
            Btn.add,
            Btn.subtract,
            Btn.divide,
            Btn.calculate,
          ].contains(value)
            ? Colors.orange
            : Colors.black87,
        clipBehavior: Clip.hardEdge,
        shape: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white24,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
        child: InkWell(
          onTap: () => viewModel.onBtnTap(value),
          child: Center(
            child: Text(
              value,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
          drawer:MyDrawer()
            
          ,
        );
      },
    );
  }


 
    

}
