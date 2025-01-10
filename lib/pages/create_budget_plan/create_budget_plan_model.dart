import '/flutter_flow/flutter_flow_util.dart';
import 'create_budget_plan_widget.dart' show CreateBudgetPlanWidget;
import 'package:flutter/material.dart';

class CreateBudgetPlanModel extends FlutterFlowModel<CreateBudgetPlanWidget> {
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
  DateTime? datePicked1;
  DateTime? datePicked2;

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
