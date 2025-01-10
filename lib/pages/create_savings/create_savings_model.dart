import '/flutter_flow/flutter_flow_util.dart';
import 'create_savings_widget.dart' show CreateSavingsWidget;
import 'package:flutter/material.dart';

class CreateSavingsModel extends FlutterFlowModel<CreateSavingsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Budget_Category widget.
  FocusNode? budgetCategoryFocusNode;
  TextEditingController? budgetCategoryTextController;
  String? Function(BuildContext, String?)?
      budgetCategoryTextControllerValidator;
  // State field(s) for Budget_amount widget.
  FocusNode? budgetAmountFocusNode1;
  TextEditingController? budgetAmountTextController1;
  String? Function(BuildContext, String?)? budgetAmountTextController1Validator;
  // State field(s) for Budget_amount widget.
  FocusNode? budgetAmountFocusNode2;
  TextEditingController? budgetAmountTextController2;
  String? Function(BuildContext, String?)? budgetAmountTextController2Validator;
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    budgetCategoryFocusNode?.dispose();
    budgetCategoryTextController?.dispose();

    budgetAmountFocusNode1?.dispose();
    budgetAmountTextController1?.dispose();

    budgetAmountFocusNode2?.dispose();
    budgetAmountTextController2?.dispose();
  }
}
