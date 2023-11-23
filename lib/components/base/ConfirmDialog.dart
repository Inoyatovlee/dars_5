import 'package:flutter_royxatlar_5/import.dart';

class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog({
    Key? key,
    required this.text,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.theme.cardColor,
      title: Text(
        title,
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(text),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text(
            "Tasdiqlash",
            style: TextStyle(color: Colors.green, fontSize: 16),
          ),
          onPressed: () async {
            onTap();
          },
        ),
        TextButton(
          child: const Text(
            "Bekor qilish",
            style: TextStyle(color: Colors.red, fontSize: 16),
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ],
    );
  }
}
