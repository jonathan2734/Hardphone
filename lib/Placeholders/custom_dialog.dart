import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class CustomDialog {
  Future<dynamic> initCustomDialog(BuildContext context, Widget body) {
    return AwesomeDialog(
      context: context,
      dialogType: DialogType.info,
      borderSide: const BorderSide(
        color: Colors.blue,
        width: 2,
      ),
      body: body,
      alignment: Alignment.center,
      buttonsBorderRadius: const BorderRadius.all(
        Radius.circular(2),
      ),
      dismissOnTouchOutside: true,
      dismissOnBackKeyPress: false,
      headerAnimationLoop: false,
      animType: AnimType.bottomSlide,
      showCloseIcon: true,
      btnOkOnPress: () {},
    ).show();
  }
}

