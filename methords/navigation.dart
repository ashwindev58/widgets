import 'package:flutter/material.dart';

// Navigate to a new screen (push a new screen)
void navigateTo(BuildContext context, Widget screen) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => screen),
  );
}

// Replace the current screen with a new screen (pushReplacement)
void navigateAndReplace(BuildContext context, Widget screen) {
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (context) => screen),
  );
}

// Navigate to a new screen and clear all previous screens (pushAndRemoveUntil)
void navigateAndClearStack(BuildContext context, Widget screen) {
  Navigator.of(context).pushAndRemoveUntil(
    MaterialPageRoute(builder: (context) => screen),
    (Route<dynamic> route) => false,
  );
}

// Go back to the previous screen (pop)
void goBack(BuildContext context) {
  Navigator.of(context).pop();
}
