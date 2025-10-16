// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:inspiraciones_bloc/main.dart';

void main() {
  testWidgets('Renders the home page', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the title and text are displayed.
    expect(find.text('Mis Inspiraciones'), findsOneWidget);
    expect(find.text('Aquí aparecerán tus ideas'), findsOneWidget);

    // Verify that the floating action button with the add icon is present.
    expect(find.byIcon(Icons.add), findsOneWidget);
  });
}