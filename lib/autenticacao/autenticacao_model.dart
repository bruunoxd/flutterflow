import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'autenticacao_widget.dart' show AutenticacaoWidget;
import 'package:flutter/material.dart';

class AutenticacaoModel extends FlutterFlowModel<AutenticacaoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  // State field(s) for txtSenha widget.
  FocusNode? txtSenhaFocusNode;
  TextEditingController? txtSenhaTextController;
  late bool txtSenhaVisibility;
  String? Function(BuildContext, String?)? txtSenhaTextControllerValidator;
  // State field(s) for cadNome widget.
  FocusNode? cadNomeFocusNode;
  TextEditingController? cadNomeTextController;
  String? Function(BuildContext, String?)? cadNomeTextControllerValidator;
  // State field(s) for cadEmail widget.
  FocusNode? cadEmailFocusNode;
  TextEditingController? cadEmailTextController;
  String? Function(BuildContext, String?)? cadEmailTextControllerValidator;
  // State field(s) for cadSenha widget.
  FocusNode? cadSenhaFocusNode;
  TextEditingController? cadSenhaTextController;
  late bool cadSenhaVisibility;
  String? Function(BuildContext, String?)? cadSenhaTextControllerValidator;
  // State field(s) for cadConfirmarSenha widget.
  FocusNode? cadConfirmarSenhaFocusNode;
  TextEditingController? cadConfirmarSenhaTextController;
  late bool cadConfirmarSenhaVisibility;
  String? Function(BuildContext, String?)?
      cadConfirmarSenhaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtSenhaVisibility = false;
    cadSenhaVisibility = false;
    cadConfirmarSenhaVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtSenhaFocusNode?.dispose();
    txtSenhaTextController?.dispose();

    cadNomeFocusNode?.dispose();
    cadNomeTextController?.dispose();

    cadEmailFocusNode?.dispose();
    cadEmailTextController?.dispose();

    cadSenhaFocusNode?.dispose();
    cadSenhaTextController?.dispose();

    cadConfirmarSenhaFocusNode?.dispose();
    cadConfirmarSenhaTextController?.dispose();
  }
}
