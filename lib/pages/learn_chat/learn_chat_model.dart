import '/flutter_flow/flutter_flow_util.dart';
import 'learn_chat_widget.dart' show LearnChatWidget;
import 'package:flutter/material.dart';

class LearnChatModel extends FlutterFlowModel<LearnChatWidget> {
  ///  Local state fields for this page.

  String? query;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? geminiResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
