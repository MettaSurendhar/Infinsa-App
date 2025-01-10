import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'plan_chat_widget.dart' show PlanChatWidget;
import 'package:flutter/material.dart';

class PlanChatModel extends FlutterFlowModel<PlanChatWidget> {
  ///  Local state fields for this page.

  String category = 'general_bank';

  String chatType = 'plan';

  String? query;

  String? generatedResponse;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (chat)] action in Button widget.
  ApiCallResponse? apiResult6ms;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
