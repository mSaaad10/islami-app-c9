import 'package:flutter/material.dart';
import 'package:islami_c10_friday/ui/home/hadeth_tab/hadeth_details_screen.dart';
import 'package:islami_c10_friday/ui/home/home_screen.dart';
import 'package:islami_c10_friday/ui/home/screens/sura_details_screen.dart';
import 'package:islami_c10_friday/ui/home/splash_screen.dart';
import 'package:islami_c10_friday/ui/styles/my_theme_data.dart';

void main(){
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.dark,
      routes: {
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SplashScreen.routeName: (context) => SplashScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }

}