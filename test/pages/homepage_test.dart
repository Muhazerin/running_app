import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:running_app/pages/homepage.dart';

void main() {
  testWidgets('Widgets existence test', (WidgetTester tester) async {
    await tester.pumpWidget(const HomePage());

    expect(
        find.text('Welcome! What would you like to do today?'), findsOneWidget);
    expect(find.byIcon(Icons.directions_run_rounded), findsOneWidget);
    expect(find.byIcon(Icons.timer_rounded), findsOneWidget);
  });
}
