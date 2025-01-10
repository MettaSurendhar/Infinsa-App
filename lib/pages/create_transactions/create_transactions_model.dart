import '/flutter_flow/flutter_flow_util.dart';
import 'create_transactions_widget.dart' show CreateTransactionsWidget;
import 'package:flutter/material.dart';

class CreateTransactionsModel
    extends FlutterFlowModel<CreateTransactionsWidget> {
  ///  Local state fields for this page.

  DateTime? startdate;

  DateTime? enddate;

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
  DateTime? datePicked;

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
