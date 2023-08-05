import 'package:e_umkm_mobile/users/fragments/dashboard_of_fragments.dart';
import 'package:e_umkm_mobile/users/userPreferences/user_preferences.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:e_umkm_mobile/users/authentication/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Mr Music Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //  primarySwatch: Colors.red,
          ),
      home: FutureBuilder(
        future: RememberUserPrefs.readUserInfo(),
        builder: (context, dataSnapShot) {
          if(dataSnapShot.data == null){
            return LoginScreen();
          }
          else{
            return DashboardOfFragments();
          }
        },
      ),
    );
  }
}
