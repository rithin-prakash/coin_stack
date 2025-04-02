import 'package:flutter/material.dart';
import 'package:reactive_dropdown_search/reactive_dropdown_search.dart';

class AppAsyncDropdownSearchField<T> extends StatefulWidget {
  const AppAsyncDropdownSearchField({
    super.key,
    required this.controlName,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.prefixText,
    this.asyncItems,
    required this.compareFn,
    required this.initialCall,
    this.validationMessages,
  });

  final String controlName;
  final String? hintText;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final String? prefixText;
  final Future<List<T>> Function()? asyncItems;
  final bool Function(T, T) compareFn;
  final VoidCallback initialCall;
  final Map<String, String Function(Object)>? validationMessages;

  @override
  State<AppAsyncDropdownSearchField<T>> createState() =>
      _AppAsyncDropdownSearchFieldState<T>();
}

class _AppAsyncDropdownSearchFieldState<T>
    extends State<AppAsyncDropdownSearchField<T>> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    widget.initialCall();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.labelText != null)
          Text(
            widget.labelText!,
            style: Theme.of(context).inputDecorationTheme.labelStyle,
          ),
        ReactiveDropdownSearch<T, T>(
          formControlName: widget.controlName,
          validationMessages: widget.validationMessages,
          items:
              widget.asyncItems != null
                  ? (s, __) => widget.asyncItems!()
                  : null,
          suffixProps: DropdownSuffixProps(
            dropdownButtonProps: DropdownButtonProps(
              iconOpened: Icon(Icons.keyboard_arrow_up, size: 24),
              iconClosed: Icon(Icons.keyboard_arrow_down, size: 24),
            ),
          ),
          compareFn: widget.compareFn,
        ),
      ],
    );
  }
}
