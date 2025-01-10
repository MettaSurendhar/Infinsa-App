import '/components/stock_today_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'stockmarketupdate_widget.dart' show StockmarketupdateWidget;
import 'package:flutter/material.dart';

class StockmarketupdateModel extends FlutterFlowModel<StockmarketupdateWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for stock_today component.
  late StockTodayModel stockTodayModel;

  @override
  void initState(BuildContext context) {
    stockTodayModel = createModel(context, () => StockTodayModel());
  }

  @override
  void dispose() {
    stockTodayModel.dispose();
  }
}
