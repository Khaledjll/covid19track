import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Constants {
  
  static final Constants _singleton = new Constants._internal();

  factory Constants() {
    return _singleton;
  }

  Constants._internal();

  static void showDialog(String message) {
    Get.generalDialog(
      pageBuilder: (context, __, ___) => AlertDialog(
        title: Text('Collège Boréal'),
        content: Text(message),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text('OK')
          )
        ],
      )
    );
  }
}


