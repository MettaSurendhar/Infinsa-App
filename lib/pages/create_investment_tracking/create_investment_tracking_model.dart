import '/flutter_flow/flutter_flow_util.dart';
import 'create_investment_tracking_widget.dart'
    show CreateInvestmentTrackingWidget;
import 'package:flutter/material.dart';

class CreateInvestmentTrackingModel
    extends FlutterFlowModel<CreateInvestmentTrackingWidget> {
  ///  Local state fields for this page.

  DateTime? startdate;

  DateTime? enddate;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Budget_amount widget.
  FocusNode? budgetAmountFocusNode;
  TextEditingController? budgetAmountTextController;
  String? Function(BuildContext, String?)? budgetAmountTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    budgetAmountFocusNode?.dispose();
    budgetAmountTextController?.dispose();
  }
}
