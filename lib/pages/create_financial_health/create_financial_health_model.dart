import '/flutter_flow/flutter_flow_util.dart';
import 'create_financial_health_widget.dart' show CreateFinancialHealthWidget;
import 'package:flutter/material.dart';

class CreateFinancialHealthModel
    extends FlutterFlowModel<CreateFinancialHealthWidget> {
  ///  Local state fields for this page.

  DateTime? startdate;

  DateTime? enddate;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Budget_Category widget.
  FocusNode? budgetCategoryFocusNode1;
  TextEditingController? budgetCategoryTextController1;
  String? Function(BuildContext, String?)?
      budgetCategoryTextController1Validator;
  // State field(s) for Budget_Category widget.
  FocusNode? budgetCategoryFocusNode2;
  TextEditingController? budgetCategoryTextController2;
  String? Function(BuildContext, String?)?
      budgetCategoryTextController2Validator;
  // State field(s) for Budget_Category widget.
  FocusNode? budgetCategoryFocusNode3;
  TextEditingController? budgetCategoryTextController3;
  String? Function(BuildContext, String?)?
      budgetCategoryTextController3Validator;
  // State field(s) for Budget_amount widget.
  FocusNode? budgetAmountFocusNode;
  TextEditingController? budgetAmountTextController;
  String? Function(BuildContext, String?)? budgetAmountTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    budgetCategoryFocusNode1?.dispose();
    budgetCategoryTextController1?.dispose();

    budgetCategoryFocusNode2?.dispose();
    budgetCategoryTextController2?.dispose();

    budgetCategoryFocusNode3?.dispose();
    budgetCategoryTextController3?.dispose();

    budgetAmountFocusNode?.dispose();
    budgetAmountTextController?.dispose();
  }
}
