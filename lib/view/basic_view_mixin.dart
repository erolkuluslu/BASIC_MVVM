
import 'package:basic_mvvm/basic_model.dart';
import 'package:basic_mvvm/basic_view.dart';
import 'package:flutter/material.dart';

mixin BasicViewMixin on State<BasicView>{
  final TextEditingController userNameController = TextEditingController();
  ValueNotifier<bool> isValidateForTextController = ValueNotifier<bool>(false);

  String get valueForName => userNameController.value.text;
  BasicModel get basicModel => BasicModel(valueForName);
  void onControllerChange(String value){
    isValidateForTextController.value = value.length > 3;
  }

  @override
  void dispose() {
    // TODO: implement dispose
     userNameController.dispose();
    super.dispose();
  }
}