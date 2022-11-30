import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:we_are_friends_app/pages/events/events_group/events_group_controller.dart';

class EventsGroupBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(EventGroupController());
  }
}
