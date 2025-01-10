import '/components/carloan_widget.dart';
import '/components/homeloan_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'loan_widget.dart' show LoanWidget;
import 'package:flutter/material.dart';

class LoanModel extends FlutterFlowModel<LoanWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for carloan component.
  late CarloanModel carloanModel;
  // Model for homeloan component.
  late HomeloanModel homeloanModel;

  @override
  void initState(BuildContext context) {
    carloanModel = createModel(context, () => CarloanModel());
    homeloanModel = createModel(context, () => HomeloanModel());
  }

  @override
  void dispose() {
    carloanModel.dispose();
    homeloanModel.dispose();
  }
}
