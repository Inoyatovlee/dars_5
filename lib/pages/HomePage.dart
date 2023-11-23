import 'package:flutter_royxatlar_5/import.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeConteroller conteroller = Get.put(
      HomeConteroller()); //Bu get ishlatilganda iwlatiladi 'homeConterolle'bizda bor fayln.

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeConteroller>(
      builder: (controller) {
        return Scaffold(
            body: Container(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: controller.ism,
                  maxLength: 20, // Qancha beldi kiritilishi  'maxLendth'
                  obscureText:
                      false, // obscureText bu 'false- bo'lsa "ghhhhh"ko'rinadi,bu 'true- bo'lsa " ****** " ko'rinadi.
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Ism',
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: controller.familiya,
                  maxLength: 20,
                  obscureText: false,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Familiya',
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: controller.parol,
                  maxLength: 12,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Parol',
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: () {
                    controller.add();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        'Saqlash',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  children: List.generate(controller.users.length, (index) {
                    var bitta_elemen = controller.users[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Card(
                        color: Colors.green.shade100,
                        child: ListTile(
                          leading: const CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('assets/images/lee.jpg'),
                          ),
                          title: Text(bitta_elemen['ism']),
                          subtitle: Text(bitta_elemen['familiya']),
                          trailing: IconButton(
                              //trailing bu
                              onPressed: () {
                                Get.dialog(ConfirmDialog(
                                    text:
                                        "Siz rostan ham ${bitta_elemen['ism']} foydalanuvchisini o'chirasizmi ? ",
                                    title: "O'chirish",
                                    onTap: () {
                                      controller
                                          .userDelete(bitta_elemen['ism']);
                                      Get.back();
                                    }));
                              },
                              icon: const Icon(
                                Icons.delete_forever_sharp,
                                color: Colors.red,
                              )),
                        ),
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
        ));
      },
    );
  }
}
