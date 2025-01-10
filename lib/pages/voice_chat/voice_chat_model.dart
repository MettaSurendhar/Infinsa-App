import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'voice_chat_widget.dart' show VoiceChatWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class VoiceChatModel extends FlutterFlowModel<VoiceChatWidget> {
  ///  Local state fields for this page.

  bool viewButton = true;

  ///  State fields for stateful widgets in this page.

  AudioRecorder? audioRecorder;
  String? recordedAudio;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  // Stores action output result for [Backend Call - API (voice)] action in Button widget.
  ApiCallResponse? apiVoiceResults;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
