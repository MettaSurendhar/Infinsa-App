import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_credit_card_widget.dart' show CreateCreditCardWidget;
import 'package:flutter/material.dart';

class CreateCreditCardModel extends FlutterFlowModel<CreateCreditCardWidget> {
  ///  Local state fields for this page.

  DateTime? startdate;

  DateTime? enddate;

  DateTime? expirydate;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Budget_amount widget.
  FocusNode? budgetAmountFocusNode1;
  TextEditingController? budgetAmountTextController1;
  String? Function(BuildContext, String?)? budgetAmountTextController1Validator;
  // State field(s) for Budget_Category widget.
  FocusNode? budgetCategoryFocusNode;
  TextEditingController? budgetCategoryTextController;
  String? Function(BuildContext, String?)?
      budgetCategoryTextControllerValidator;
  // State field(s) for Budget_amount widget.
  FocusNode? budgetAmountFocusNode2;
  TextEditingController? budgetAmountTextController2;
  String? Function(BuildContext, String?)? budgetAmountTextController2Validator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    budgetAmountFocusNode1?.dispose();
    budgetAmountTextController1?.dispose();

    budgetCategoryFocusNode?.dispose();
    budgetCategoryTextController?.dispose();

    budgetAmountFocusNode2?.dispose();
    budgetAmountTextController2?.dispose();
  }
}
