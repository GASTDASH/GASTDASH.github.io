import 'package:flutter/material.dart';

class DialogCustom extends StatelessWidget {
  const DialogCustom({super.key, this.children = const <Widget>[]});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          mainAxisSize: MainAxisSize.min,
          children: children,
        ),
      ),
    );
  }
}
