// Text controller datayı alsın, bunuda servise yollayıp sonuca göre sayfaya atsın
import 'package:basic_mvvm/basic_view_model.dart';
import 'package:basic_mvvm/core/basic_cache.dart';
import 'package:basic_mvvm/view/basic_view_mixin.dart';
import 'package:flutter/material.dart';
part 'package:basic_mvvm/view/basic_input_field.dart';


// 1-Validation will be implemented
// 2-If the validation is successful, then button must be activated
// 3-Oppressed button data value should be send to service layer
// 4-Service message should return to the view

class BasicView extends StatefulWidget {
  const BasicView({Key? key}) : super(key: key);

  @override
  State<BasicView> createState() => _BasicViewState();
}
// by this it I will write UI logic work in BasicViewMixin and it will work only in BasicView
class _BasicViewState extends State<BasicView> with BasicViewMixin {
  final BasicViewModel _viewModel = BasicViewModel(BasicCache());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BasicInputField(userNameController: userNameController, onControllerChange: onControllerChange),
          ValueListenableBuilder<bool>(
              valueListenable: isValidateForTextController,
              builder: (context, value, child) {
              return ElevatedButton(
                  onPressed: value == false ? null :() {
                    _viewModel.controlToUserName(basicModel);
                  },
                  child: const Text("data"));
            }
          ),
        ],
      ),
    );
  }
}
