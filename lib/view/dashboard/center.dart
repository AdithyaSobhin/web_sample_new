import 'package:flutter/material.dart';
import 'package:web_sample/responsive.dart';

class CenterSection extends StatelessWidget {
  const CenterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: Responsive.isDesktop(context)
          ? SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10)
          : SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: Responsive.isSmall(context) ? 3 : 5,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
      itemBuilder: (context, index) => Container(
        color: Colors.purple,
      ),
    );
  }
}
