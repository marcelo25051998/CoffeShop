import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'cadastro_widget.dart' show CadastroWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CadastroModel extends FlutterFlowModel<CadastroWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for emailCadastro widget.
  FocusNode? emailCadastroFocusNode;
  TextEditingController? emailCadastroController;
  String? Function(BuildContext, String?)? emailCadastroControllerValidator;
  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaControllerValidator;
  // State field(s) for senhaconfirmar widget.
  FocusNode? senhaconfirmarFocusNode;
  TextEditingController? senhaconfirmarController;
  late bool senhaconfirmarVisibility;
  String? Function(BuildContext, String?)? senhaconfirmarControllerValidator;
  // Stores action output result for [Custom Action - validarEmail] action in Button widget.
  bool? valoremail;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    senhaVisibility = false;
    senhaconfirmarVisibility = false;
  }

  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    emailCadastroFocusNode?.dispose();
    emailCadastroController?.dispose();

    senhaFocusNode?.dispose();
    senhaController?.dispose();

    senhaconfirmarFocusNode?.dispose();
    senhaconfirmarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
