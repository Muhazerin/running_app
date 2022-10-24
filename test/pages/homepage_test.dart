import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:running_app/pages/homepage.dart';

void main() {
  testWidgets('HomePage component existence test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: HomePage(),
      ),
    );

    expect(
      find.text('Welcome! What would you like to do today?'),
      findsOneWidget,
    );
    expect(
      find.byIcon(Icons.directions_run_rounded),
      findsOneWidget,
    );
    expect(
      find.text('Endurance Run'),
      findsOneWidget,
    );
    expect(
      find.byIcon(Icons.timer_rounded),
      findsOneWidget,
    );
    expect(
      find.text('Interval Run'),
      findsOneWidget,
    );
  });
}
