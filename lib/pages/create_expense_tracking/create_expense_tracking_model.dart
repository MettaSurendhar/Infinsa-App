import '/flutter_flow/flutter_flow_util.dart';
import 'create_expense_tracking_widget.dart' show CreateExpenseTrackingWidget;
import 'package:flutter/material.dart';

class CreateExpenseTrackingModel
    extends FlutterFlowModel<CreateExpenseTrackingWidget> {
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
  FocusNode? budgetAmountFocusNode;
  TextEditingController? budgetAmountTextController;
  String? Function(BuildContext, String?)? budgetAmountTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    budgetCategoryFocusNode?.dispose();
    budgetCategoryTextController?.dispose();

    budgetAmountFocusNode?.dispose();
    budgetAmountTextController?.dispose();
  }
}
