import 'package:flutter/material.dart';
import 'package:fseg_sousse/services/auth/authentication.dart';
import 'package:fseg_sousse/utilities/connectivity_utility.dart';
import 'package:fseg_sousse/views/auth/verify_email_view.dart';
import 'package:fseg_sousse/locator.dart';
import 'package:fseg_sousse/widgets/custom_snackbar.dart';

class SignUpViewModel {
  final FireAuth _fireAuth = locator<FireAuth>();

  Future<void> signUpWithEmail(BuildContext context,
      {required String email,
      required String password,
      // required String fullName
      }) async {
    if (await ConnectivityUtility.checkInternet(context)) {
      String? result = await _fireAuth.signUpWithEmail(
          email: email, password: password, /*fullName: fullName*/);

      if (result == "success") {
        Navigator.pushNamed(context, VerifyEmailScreen.id);
      } else {
        AppSnackBar.errorSnackBar(context, content: result!);
      }
    }
  }
}
