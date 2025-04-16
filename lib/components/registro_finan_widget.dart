import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'registro_finan_model.dart';
export 'registro_finan_model.dart';

class RegistroFinanWidget extends StatefulWidget {
  const RegistroFinanWidget({super.key});

  @override
  State<RegistroFinanWidget> createState() => _RegistroFinanWidgetState();
}

class _RegistroFinanWidgetState extends State<RegistroFinanWidget> {
  late RegistroFinanModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegistroFinanModel());

    _model.txtDescricaoTextController ??= TextEditingController();
    _model.txtDescricaoFocusNode ??= FocusNode();

    _model.txtValorTextController ??= TextEditingController();
    _model.txtValorFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          width: 400.0,
          height: 572.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                FlutterFlowTheme.of(context).primaryText,
                Color(0xFF3A84FF),
                Color(0xFF06204E),
                Color(0xFFE3050E)
              ],
              stops: [0.0, 1.0, 1.0, 1.0],
              begin: AlignmentDirectional(1.0, 0.34),
              end: AlignmentDirectional(-1.0, -0.34),
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 80.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'ADICIONAR REGISTRO',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.pop(context);
                          },
                          child: FaIcon(
                            FontAwesomeIcons.windowClose,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 471.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Titulo do Registro:',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        TextFormField(
                          controller: _model.txtDescricaoTextController,
                          focusNode: _model.txtDescricaoFocusNode,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Descrição do Gasto..',
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context).alternate,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          validator: _model.txtDescricaoTextControllerValidator
                              .asValidator(context),
                        ),
                        Text(
                          'Valor R\$:',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        TextFormField(
                          controller: _model.txtValorTextController,
                          focusNode: _model.txtValorFocusNode,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Valor do Gasto..',
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context).alternate,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          validator: _model.txtValorTextControllerValidator
                              .asValidator(context),
                        ),
                        Text(
                          'Categoria:',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        FlutterFlowDropDown<String>(
                          controller: _model.dpCategoriaValueController ??=
                              FormFieldController<String>(null),
                          options: [
                            'Mercado',
                            'Fármacia',
                            'Cartão de Crédito',
                            'Compras',
                            'Carro',
                            'Despesas',
                            'Divida',
                            'Academia',
                            'Delivery',
                            'Estudos',
                            'Salário'
                          ],
                          onChanged: (val) =>
                              safeSetState(() => _model.dpCategoriaValue = val),
                          width: 343.0,
                          height: 56.0,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          hintText: 'Selecione a Categoria ..',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor: FlutterFlowTheme.of(context).alternate,
                          elevation: 2.0,
                          borderColor: Colors.transparent,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                        Text(
                          'Tipo:',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        FlutterFlowDropDown<String>(
                          controller: _model.dpTipoValueController ??=
                              FormFieldController<String>(null),
                          options: ['Entrada', 'Saída'],
                          onChanged: (val) =>
                              safeSetState(() => _model.dpTipoValue = val),
                          width: 343.0,
                          height: 56.0,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          hintText: 'Selecione o Tipo .. ',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor: FlutterFlowTheme.of(context).alternate,
                          elevation: 2.0,
                          borderColor: Colors.transparent,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  return;
                                }
                                if (_model.dpCategoriaValue == null) {
                                  return;
                                }
                                if (_model.dpTipoValue == null) {
                                  return;
                                }
                                await RegistrosTable().insert({
                                  'descricao': valueOrDefault<String>(
                                    _model.txtDescricaoTextController.text,
                                    'descricao',
                                  ),
                                  'categoria': valueOrDefault<String>(
                                    _model.dpCategoriaValue,
                                    'categoria',
                                  ),
                                  'tipo': valueOrDefault<String>(
                                    _model.dpTipoValue,
                                    'tipo',
                                  ),
                                  'valor': valueOrDefault<double>(
                                    double.tryParse(
                                        _model.txtValorTextController.text),
                                    0.0,
                                  ),
                                  'user_id': currentUserUid,
                                });
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Sucesso!'),
                                      content: Text(
                                          'Registro adicionado com sucesso !'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                Navigator.pop(context);
                              },
                              text: 'Adicionar Registro',
                              options: FFButtonOptions(
                                width: 265.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFFE3050E),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ]
                          .divide(SizedBox(height: 8.0))
                          .around(SizedBox(height: 8.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
