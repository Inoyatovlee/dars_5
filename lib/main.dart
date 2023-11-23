import 'package:flutter_royxatlar_5/import.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //Get ishlatilganda hat doim  GetMatrialApp yoziladi
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
          const SafeArea(child: HomePage()), //Qaysi Oynani qo'yish kiritiladi.
    );
  }
}
