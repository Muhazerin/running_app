import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:running_app/widgets/my_bottom_navigation_bar.dart';

void main() {
  testWidgets(
    "Bottom Navigation Bar component existence test",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: MyBottomNavigationBar(),
        ),
      );

      expect(
        find.byIcon(Icons.home_rounded),
        findsOneWidget,
      );

      expect(
        find.byIcon(Icons.history_rounded),
        findsOneWidget,
      );
    },
  );
}
