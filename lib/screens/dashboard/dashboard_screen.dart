import 'package:flutter/material.dart';
import 'package:paymint/core/constants/app_strings.dart';
import 'package:paymint/widgets/app_page.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppPage(title: AppStrings.dashboardTitle);
  }
}
