import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NotificationToast {
  static showToast() => Fluttertoast.showToast(
        msg: "コピーしました",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0,
      );
}
