import 'package:get/get.dart';
import 'package:nsg_data/nsg_data.dart';

import 'package:we_are_friends_app/model/data_controller_model.dart';

class EventsController extends NsgDataController<Event> {
  EventsController()
      : super(
            controllerMode: const NsgDataControllerMode(
                storageType: NsgDataStorageType.local));

  @override
  Future<Event> doCreateNewItem() async {
    var el = await super.doCreateNewItem();
    el.date = DateTime.now().add(const Duration(days: 1));
    return el;
  }
}

class EventsFriendTableController
    extends NsgDataTableController<EventFriendTable> {
  EventsFriendTableController()
      : super(
            masterController: Get.find<EventsController>(),
            tableFieldName: EventGenerated.nameFriendTable);
}
