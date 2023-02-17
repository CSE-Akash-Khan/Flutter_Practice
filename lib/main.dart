import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/AllTypedListView.dart';
import 'package:practice/Animation/Animated_Opacity.dart';
import 'package:practice/Animation/RippleAnimation.dart';
import 'package:practice/App/CalculatorApp.dart';
import 'package:practice/App/LoginApp/LoginPage.dart';
import 'package:practice/CustomFonts.dart';
import 'package:practice/CustomWidget.dart';
import 'package:practice/Gird_View.dart';
import 'package:practice/HomePage.dart';
import 'package:practice/IconPackage.dart';
import 'package:practice/ListWithDiffValue.dart';
import 'package:practice/RowColumn.dart';
import 'package:practice/SEIP_Class/day16_UI.dart';
import 'package:practice/SEIP_Class/day9.dart';
import 'package:practice/SplashScreen.dart';
import 'package:practice/StackWidget.dart';
import 'package:practice/StateFullWidget.dart';
import 'package:practice/SwitchScreen.dart';
import 'package:practice/DrawerTest.dart';
import 'package:practice/TextField_widget.dart';
import 'package:practice/Animation/TweenAnimation.dart';
import 'package:practice/WrapWidget.dart';
import 'package:practice/car_widget.dart';
import 'package:practice/SEIP_Class/class8.dart';
import 'package:practice/travel.dart';

import '3dLIstView.dart';
import 'Animation/AnimateContainer.dart';
import 'App/BmiApp.dart';
import 'App/LoginApp/BottomNavBar.dart';
import 'App/LoginApp/SplashScreen.dart';
import 'Button.dart';
import 'CircleAvatar.dart';
import 'ConstraintBox.dart';
import 'DataTime.dart';
import 'GetX/HomePage.dart';
import 'GetX/controller/InitializeController.dart';
import 'Gradients.dart';
import 'Animation/HeroAnimation.dart';
import 'SEIP_Class/AlertDialog.dart';
import 'SEIP_Class/BmiResultPage.dart';
import 'SEIP_Class/ListView_Model.dart';
import 'SEIP_Class/LoginPage_form.dart';
import 'SEIP_Class/bmi_calculator.dart';
import 'SEIP_Class/first_ui.dart';
import 'SEIP_Class/imagePicker.dart';
import 'SharedPreferences.dart';
import 'SimpleWidget.dart';
import 'GetX/controller/InitController.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.Init();
  runApp(const PracticeApp());
}

class PracticeApp extends StatelessWidget {
  const PracticeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialBinding: InitializeController(),
      debugShowCheckedModeBanner: false,
      title: "Practice app",
      theme: ThemeData(
          textTheme:  const TextTheme(
              displayLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              displayMedium: TextStyle(
                  fontSize: 10,
                  fontFamily: "CustomFont",
                  color: Colors.blueAccent)),
          primarySwatch: Colors.green),
      // home: LoginAppSplashScreen(),
      home: TakeImageFromGallery(),
    );
  }
}


