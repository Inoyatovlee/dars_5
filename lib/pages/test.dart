import 'package:flutter_royxatlar_5/import.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  HomeConteroller controller = Get.put(HomeConteroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() {
          return Column(
            children: [
              Text(controller.text.value),
              ElevatedButton(
                  onPressed: () {
                    controller.edit();
                  },
                  child: Text("O'zgartir")),
            ],
          );
        }),
      ),
    );
  }
}
