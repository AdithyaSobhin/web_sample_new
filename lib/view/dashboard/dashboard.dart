import 'package:flutter/material.dart';
import 'package:web_sample/responsive.dart';
import 'package:web_sample/view/dashboard/center.dart';
import 'package:web_sample/view/dashboard/left.dart';
import 'package:web_sample/view/dashboard/right.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: LeftSection(),
      ),
      appBar: Responsive.isSmall(context) ? AppBar() : null,
      body: Row(
        children: [
          if (Responsive.isLarge(context))
            Expanded(
              flex: 2,
              child: LeftSection(),
            ),
          Expanded(
            flex: 5,
            child: CenterSection(),
          ),
          if (Responsive.isDesktop(context))
            Expanded(
              flex: 3,
              child: RightSection(),
            ),
        ],
      ),
    );
  }
}
