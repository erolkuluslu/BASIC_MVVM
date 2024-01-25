
part of  'package:basic_mvvm/basic_view.dart';
class BasicInputField extends StatelessWidget {
  const BasicInputField ({Key? key, required this.userNameController, required this.onControllerChange}) : super(key: key);

  final TextEditingController userNameController;
  final ValueChanged<String> onControllerChange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: userNameController,
      onChanged: onControllerChange,
      decoration: InputDecoration(
        hintText: "Enter a user name",
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
