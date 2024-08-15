import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ilk_uygulamam/main.dart';

void main() {
  testWidgets('HomeScreen widgets test', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the app starts with the correct initial UI.
    expect(find.text('Bağışçı Girişi'), findsOneWidget);
    expect(find.text('Admin Girişi'), findsOneWidget);
    expect(find.text('İhtiyaç Sahibi Girişi'), findsOneWidget);

    // Tap the 'Bağışçı Girişi' button and trigger a frame.
    await tester.tap(find.text('Bağışçı Girişi'));
    await tester.pumpAndSettle();

    // Verify that the 'Bağışçı' login screen appears.
    expect(find.text('Bağışçı Girişi'), findsOneWidget);
    expect(find.text('Giriş Yap'), findsOneWidget);

    // Return to the home screen.
    await tester.pageBack();
    await tester.pumpAndSettle();

    // Tap the 'Admin Girişi' button and trigger a frame.
    await tester.tap(find.text('Admin Girişi'));
    await tester.pumpAndSettle();

    // Verify that the 'Admin' login screen appears.
    expect(find.text('Admin Girişi'), findsOneWidget);
    expect(find.text('Giriş Yap'), findsOneWidget);
  });
}
