import 'package:glambook/logic.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('deposit thirty percent', () {
    expect(services[0].deposit, 7500);
    expect(services[1].deposit, 1500);
  });
  test('slot availability', () {
    expect(slotTaken('09:00'), true);
    expect(slotTaken('12:00'), false);
  });
  test('seed data', () {
    expect(services.length, 5);
    expect(stylists.length, 3);
    expect(slots.length, 6);
  });
}
