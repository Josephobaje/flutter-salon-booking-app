import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:glambook/main.dart';

void main() {
  testWidgets('app loads GlamBook NG', (t) async {
    await t.pumpWidget(const MyApp());
    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.text('GlamBook NG'), findsWidgets);
  });
}
