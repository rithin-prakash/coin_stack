import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntoPageBuilder extends StatefulWidget {
  const IntoPageBuilder({
    super.key,
    required this.onPageChange,
    required this.pages,
    required this.controller,
  });
  final Function(int) onPageChange;
  final List<StatelessWidget> pages;
  final PageController controller;

  @override
  State<IntoPageBuilder> createState() => _IntoPageBuilderState();
}

class _IntoPageBuilderState extends State<IntoPageBuilder> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        itemCount: widget.pages.length,
        controller: widget.controller,
        onPageChanged: (value) => widget.onPageChange(value),
        itemBuilder: (_, i) {
          return widget.pages[i];
        },
      ),
    );
  }
}
