import '/components/bond_copy_widget.dart';
import '/components/bond_widget.dart';
import '/components/mutualfunds_widget.dart';
import '/components/stocks_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'investments_widget.dart' show InvestmentsWidget;
import 'package:flutter/material.dart';

class InvestmentsModel extends FlutterFlowModel<InvestmentsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for bond component.
  late BondModel bondModel;
  // Model for mutualfunds component.
  late MutualfundsModel mutualfundsModel;
  // Model for stocks component.
  late StocksModel stocksModel;
  // Model for bondCopy component.
  late BondCopyModel bondCopyModel;

  @override
  void initState(BuildContext context) {
    bondModel = createModel(context, () => BondModel());
    mutualfundsModel = createModel(context, () => MutualfundsModel());
    stocksModel = createModel(context, () => StocksModel());
    bondCopyModel = createModel(context, () => BondCopyModel());
  }

  @override
  void dispose() {
    bondModel.dispose();
    mutualfundsModel.dispose();
    stocksModel.dispose();
    bondCopyModel.dispose();
  }
}
