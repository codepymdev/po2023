import 'package:get/route_manager.dart';
import 'package:po2023/app/bindings/account_binding.dart';
import 'package:po2023/app/bindings/auth_binding.dart';
import 'package:po2023/app/bindings/dashboard_binding.dart';
import 'package:po2023/app/routes/app_routes.dart';
import 'package:po2023/app/ui/pages/auth/admin/login.dart';
import 'package:po2023/app/ui/pages/auth/agent/login.dart';
import 'package:po2023/app/ui/pages/auth/agent/signup.dart';
import 'package:po2023/app/ui/pages/dashboard.dart';
import 'package:po2023/app/ui/pages/dashboard/admin/home.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.initial,
      page: () => const Dashboard(),
      bindings: [
        DashboardBinding(),
        AuthBinding(),
      ],
    ),
    GetPage(
      name: Routes.signInAdmin,
      page: () => const AdminLogin(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.signUpAgent,
      page: () => const AgentSignup(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.signInAgents,
      page: () => const AgentLoginup(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.adminDashboard,
      page: () => const AdminDashboard(),
      binding: AccountBinding(),
    ),
  ];
}
