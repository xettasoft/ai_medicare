import 'package:ai_medicare/providers/models/base/pagination_filter.dart';
import 'package:ai_medicare/providers/notification_provider.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {
  final NotificationProvider notificationProvider;
  NotificationController({required this.notificationProvider});

  final _notifications = <String>[].obs;
  final _paginationFilter = PaginationFilter().obs;
  final _lastPage = false.obs;
  final _loading = false.obs;

  List<String> get notifications => _notifications.toList();
  int get limit => _paginationFilter.value.limit;
  int get _page => _paginationFilter.value.page;
  bool get lastPage => _lastPage.value;
  bool get loading => _loading.value;

  @override
  void onInit() {
    super.onInit();
    ever(_paginationFilter, (_) => _getAllNotifications());
    _changePaginationFilter(1, 15);
  }

  Future<void> _getAllNotifications() async {
    _loading.value = true;
    final notificationData =
        await notificationProvider.fetchNotification(_paginationFilter.value);
    if (notificationData.isEmpty) {
      _lastPage.value = true;
    }
    _notifications.addAll(notificationData);
    _loading.value = false;
  }

  void changeTotalPerPage(int limitValue) {
    _notifications.clear();
    _lastPage.value = false;
    _changePaginationFilter(1, limitValue);
  }

  void _changePaginationFilter(int page, int limit) {
    _paginationFilter.update((val) {
      val!.page = page;
      val.limit = limit;
    });
  }

  void loadNextPage() => _changePaginationFilter(_page + 1, limit);

  @override
  void onClose() {
    super.onClose();
  }
}
