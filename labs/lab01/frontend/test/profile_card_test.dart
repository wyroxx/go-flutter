import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/profile_card.dart';

void main() {
  testWidgets('ProfileCard displays user information correctly', (
    WidgetTester tester,
  ) async {
    const name = 'John Doe';
    const email = 'john@example.com';
    const age = 30;

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: ProfileCard(name: name, email: email, age: age),
        ),
      ),
    );

    expect(find.text(name), findsOneWidget);
    expect(find.text(email), findsOneWidget);
    expect(find.text('Age: $age'), findsOneWidget);
  });

  testWidgets('ProfileCard handles optional avatar', (
    WidgetTester tester,
  ) async {
    const avatarUrl = 'https://example.com/avatar.jpg';

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: ProfileCard(
            name: 'John',
            email: 'john@example.com',
            age: 30,
            avatarUrl: avatarUrl,
          ),
        ),
      ),
    );

    expect(find.byType(CircleAvatar), findsOneWidget);
  });
}
