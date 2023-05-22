import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for firstName widget.
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  // State field(s) for lastName widget.
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  // State field(s) for email_address widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for confirm_password widget.
  TextEditingController? confirmPasswordController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)? confirmPasswordControllerValidator;
  // State field(s) for company_name widget.
  TextEditingController? companyNameController;
  String? Function(BuildContext, String?)? companyNameControllerValidator;
  // State field(s) for company_address widget.
  TextEditingController? companyAddressController;
  String? Function(BuildContext, String?)? companyAddressControllerValidator;
  // State field(s) for company_contact_number widget.
  TextEditingController? companyContactNumberController;
  String? Function(BuildContext, String?)?
      companyContactNumberControllerValidator;
  // State field(s) for company_reg_number widget.
  TextEditingController? companyRegNumberController;
  String? Function(BuildContext, String?)? companyRegNumberControllerValidator;
  // State field(s) for referral_code widget.
  TextEditingController? referralCodeController;
  String? Function(BuildContext, String?)? referralCodeControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    confirmPasswordVisibility = false;
  }

  void dispose() {
    firstNameController?.dispose();
    lastNameController?.dispose();
    emailAddressController?.dispose();
    passwordController?.dispose();
    confirmPasswordController?.dispose();
    companyNameController?.dispose();
    companyAddressController?.dispose();
    companyContactNumberController?.dispose();
    companyRegNumberController?.dispose();
    referralCodeController?.dispose();
  }

  /// Additional helper methods are added here.

}
