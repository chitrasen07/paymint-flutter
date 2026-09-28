import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:paymint/core/constants/app_constants.dart';
import 'package:paymint/core/constants/app_strings.dart';
import 'package:paymint/main.dart';

void main() {
  testWidgets('PayMint launches on the dashboard', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: PayMintApp()));

    expect(find.text(AppConstants.appName), findsOneWidget);
    expect(find.text(AppStrings.dashboardTitle), findsWidgets);
  });
}
