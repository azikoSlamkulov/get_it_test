import 'package:flutter/material.dart';

class ProgressIndicator {
  Container circularProgress({semanticsLabel}) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 10.0),
      child: const CircularProgressIndicator(
        backgroundColor: Colors.black,
        valueColor: AlwaysStoppedAnimation(Colors.white),
      ),
    );
  }
}

ProgressIndicator progressIndicator = ProgressIndicator();
