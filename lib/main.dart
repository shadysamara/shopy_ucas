import 'package:elancer_lec1/data_respositories/api_helper.dart';
import 'package:elancer_lec1/ecommerce_app/providers/auth_provider.dart';
import 'package:elancer_lec1/ecommerce_app/ui/auth/screens/register_screen.dart';
import 'package:elancer_lec1/providers/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(providers: [
       ChangeNotifierProvider<AuthProvider>(
          create: (context) {
            return AuthProvider();
          },
         ),
      ChangeNotifierProvider<AppProvider>(
          create: (context) {
            return AppProvider();
          },
         )
    ], child:  MaterialApp(
      home: RegisterScreen(),
    ));
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MultiProvider(
//       providers: [Provider<AppProvider>(create: (context) {
//         return AppProvider();
//       }),],
//       child: Provider<AppProvider>(create: (context) {
//         return AppProvider();
//       },child: Scaffold(),),
//     );
//   }
// }
