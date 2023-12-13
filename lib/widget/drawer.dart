import 'package:calculator/Calculator/calculator_viewmodel.dart'; 
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MyDrawer extends ViewModelWidget<CalculatorViewModel>{
  const MyDrawer ({super.key});

  @override 

  Widget build( BuildContext context , CalculatorViewModel viewModel){

    return Drawer(

      //backgroundColor: AppColors.torquisecolor,
           // surfaceTintColor: AppColors.torquisecolor,
      child: Column(
      children: [
    const ListTile(
      tileColor: Colors.black,
    ),
    const ListTile(
      tileColor: Colors.blue,
    ),
     ListTile(
      title: Text("Dark Theme"),
      trailing: Switch(
      // This bool value toggles the switch.
      value: viewModel.themelight,
      activeColor: Colors.red,
      onChanged: (bool value) {
        
        
        viewModel.themecolor(value);
        
      },
    ),
    
    ),
    Container(
      height:1,
      width:300,
      color: Colors.grey,
    ),

    
      ],
      ),
    );

  }
}