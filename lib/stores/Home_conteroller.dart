import 'package:flutter_royxatlar_5/import.dart';

class HomeConteroller extends GetxController {
  List users = [];

  RxString text = 'Salom'.obs;

  TextEditingController ism = TextEditingController();
  TextEditingController familiya = TextEditingController();
  TextEditingController parol = TextEditingController();

  add() {
    if (ism.text.trim().isEmpty ||
        familiya.text.trim().isEmpty ||
        parol.text.trim().isEmpty) {
      Get.snackbar("Diqqat", "Ma'lumotni to'liq kiriting");
      return;
    }
    users.add({"ism": ism.text, "familiya": familiya.text});
    ism.text = '';
    familiya.text = '';
    parol.text = '';
    update();
  }

  userDelete(ism) {
    int index = users.indexWhere((element) => element['ism'] == ism);
    if (index > -1) {
      users.removeAt(index);
      update();
    }
  }

  void edit() {
    text.value = "xayr";
  }
}
