import 'package:flutter/material.dart';
import 'package:paymint/core/constants/app_strings.dart';
import 'package:paymint/screens/auth/auth_screen.dart';
import 'package:paymint/screens/bills/bills_screen.dart';
import 'package:paymint/screens/dashboard/dashboard_screen.dart';
import 'package:paymint/screens/profile/profile_screen.dart';
import 'package:paymint/screens/rewards/rewards_screen.dart';
import 'package:paymint/screens/transactions/transactions_screen.dart';
import 'package:paymint/widgets/app_page.dart';

abstract final class AppRoutes {
  static const String dashboard = '/';
  static const String auth = '/auth';
  static const String bills = '/bills';
  static const String transactions = '/transactions';
  static const String rewards = '/rewards';
  static const String profile = '/profile';
}

abstract final class AppRouter {
  static Route<void> onGenerateRoute(RouteSettings settings) {
    final Widget page = switch (settings.name) {
      AppRoutes.auth => const AuthScreen(),
      AppRoutes.dashboard => const DashboardScreen(),
      AppRoutes.bills => const BillsScreen(),
      AppRoutes.transactions => const TransactionsScreen(),
      AppRoutes.rewards => const RewardsScreen(),
      AppRoutes.profile => const ProfileScreen(),
      _ => const AppPage(title: AppStrings.pageNotFound),
    };

    return MaterialPageRoute<void>(settings: settings, builder: (_) => page);
  }
}
