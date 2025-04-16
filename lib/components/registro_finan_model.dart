import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registro_finan_widget.dart' show RegistroFinanWidget;
import 'package:flutter/material.dart';

class RegistroFinanModel extends FlutterFlowModel<RegistroFinanWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtDescricao widget.
  FocusNode? txtDescricaoFocusNode;
  TextEditingController? txtDescricaoTextController;
  String? Function(BuildContext, String?)? txtDescricaoTextControllerValidator;
  String? _txtDescricaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtValor widget.
  FocusNode? txtValorFocusNode;
  TextEditingController? txtValorTextController;
  String? Function(BuildContext, String?)? txtValorTextControllerValidator;
  String? _txtValorTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for dpCategoria widget.
  String? dpCategoriaValue;
  FormFieldController<String>? dpCategoriaValueController;
  // State field(s) for dpTipo widget.
  String? dpTipoValue;
  FormFieldController<String>? dpTipoValueController;

  @override
  void initState(BuildContext context) {
    txtDescricaoTextControllerValidator = _txtDescricaoTextControllerValidator;
    txtValorTextControllerValidator = _txtValorTextControllerValidator;
  }

  @override
  void dispose() {
    txtDescricaoFocusNode?.dispose();
    txtDescricaoTextController?.dispose();

    txtValorFocusNode?.dispose();
    txtValorTextController?.dispose();
  }
}
