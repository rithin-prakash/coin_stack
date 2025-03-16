import 'package:flutter/material.dart';

class IntoPageBuilder extends StatelessWidget {
  const IntoPageBuilder({
    super.key,
    required this.onPageChange,
    required this.pages,
  });
  final Function(int) onPageChange;
  final List<StatelessWidget> pages;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        itemCount: pages.length,
        onPageChanged: (value) => onPageChange(value),
        itemBuilder: (_, i) {
          return pages[i];
        },
      ),
    );
  }
}
