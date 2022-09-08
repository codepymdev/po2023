import 'package:get/route_manager.dart';
import 'package:po2023/app/bindings/dashboard_binding.dart';
import 'package:po2023/app/routes/app_routes.dart';
import 'package:po2023/app/ui/pages/dashboard.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.initial,
      page: () => const Dashboard(),
      bindings: [
        DashboardBinding(),
      ],
    ),
  ];
}
