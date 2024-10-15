import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.background,
    required this.title,
    required this.subtitle,
  });

  final String image, background, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(),
      ],
    );
  }
}
