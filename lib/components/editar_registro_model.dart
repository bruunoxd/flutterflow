import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_registro_widget.dart' show EditarRegistroWidget;
import 'package:flutter/material.dart';

class EditarRegistroModel extends FlutterFlowModel<EditarRegistroWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for editDesc widget.
  FocusNode? editDescFocusNode;
  TextEditingController? editDescTextController;
  String? Function(BuildContext, String?)? editDescTextControllerValidator;
  // State field(s) for editValor widget.
  FocusNode? editValorFocusNode;
  TextEditingController? editValorTextController;
  String? Function(BuildContext, String?)? editValorTextControllerValidator;
  // State field(s) for editCategoria widget.
  String? editCategoriaValue;
  FormFieldController<String>? editCategoriaValueController;
  // State field(s) for editTipo widget.
  String? editTipoValue;
  FormFieldController<String>? editTipoValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    editDescFocusNode?.dispose();
    editDescTextController?.dispose();

    editValorFocusNode?.dispose();
    editValorTextController?.dispose();
  }
}
