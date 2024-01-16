import 'package:lunii_test/common/widgets/buttons/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Golden test', (WidgetTester tester) async {
    await tester.pumpWidget(
      SizedBox(
        width: 200,
        height: 100,
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PrimaryButton(
                onPressed: () {},
                text: 'buttonText',
              ),
            ],
          ),
        ),
      ),
    );
    await expectLater(
      find.byType(PrimaryButton),
      matchesGoldenFile('primary_button_golden.png'),
    );
  });
}
