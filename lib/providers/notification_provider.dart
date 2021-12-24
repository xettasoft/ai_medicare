import 'package:ai_medicare/providers/base_provider.dart';
import 'package:ai_medicare/providers/models/base/pagination_filter.dart';
import 'package:get/get.dart';

class NotificationProvider extends BaseProvider {
  Future<List<String>> fetchNotification(PaginationFilter filter) async {
    Response? res;
    try {
      List<String> notifications = [
        "Drug purchase has been confirmed",
        "Drug purchase has been confirmed",
        "Drug purchase has been confirmed",
        "Drug purchase has been confirmed",
        "Drug purchase has been confirmed",
        "Drug purchase has been confirmed",
        "Drug purchase has been confirmed",
        "Drug purchase has been confirmed",
        "Drug purchase has been confirmed",
        "Drug purchase has been confirmed",
        "Drug purchase has been confirmed",
        "Drug purchase has been confirmed",
        "Drug purchase has been confirmed",
        "Drug purchase has been confirmed",
        "Drug purchase has been confirmed",
      ];

      await Future.delayed(const Duration(seconds: 1));
      return notifications;
    } catch (e) {
      return ["Error"];
    }
  }
}
