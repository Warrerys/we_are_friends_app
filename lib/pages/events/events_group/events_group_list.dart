import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nsg_controls/nsg_controls.dart';
import 'package:we_are_friends_app/app_pages.dart';
import 'package:we_are_friends_app/model/data_controller_model.dart';
import 'package:we_are_friends_app/pages/events/events_group/events_group_controller.dart';

class EventsGroupListPage extends GetView<EventGroupController> {
  const EventsGroupListPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return NsgListPage(
      type: NsgListPageMode.table,
      controller: controller,
      title: 'Список групп',
      textNoItems: 'Добавьте группы',
      elementEditPage: Routes.eventsGroupPage,
      columns: [
        NsgTableColumn(
            name: EventGroupGenerated.nameId,
            presentation: 'Номер группы',
            expanded: false,
            width: 100),
        NsgTableColumn(
            name: EventGroupGenerated.nameName,
            presentation: 'Название группы',
            expanded: true,
            width: 200),
      ],
      availableButtons: NsgTableMenuButtonType.allExceptSelected([
        NsgTableMenuButtonType.filterPeriod,
        NsgTableMenuButtonType.columnsSelect,
        NsgTableMenuButtonType.columnsSize,
        NsgTableMenuButtonType.favorites,
        NsgTableMenuButtonType.recent
      ]),
    );
  }
}
