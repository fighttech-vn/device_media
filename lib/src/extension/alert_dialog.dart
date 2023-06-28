import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension AleartDialogExt on BuildContext {
  Future<T?> startAlert<T>(
      {String? title, String? content, String? text1, String? text2}) async {
    return showDialog(
      context: this,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: title == null ? null : Text(title),
          content: content == null ? null : Text(content),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text(text1 ?? 'OK'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
            CupertinoDialogAction(
              child: Text(text2 ?? 'CANCEL'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
          ],
        );
      },
    );
  }
}
