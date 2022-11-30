import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nsg_controls/nsg_controls.dart';
import 'package:we_are_friends_app/app_pages.dart';
import 'package:we_are_friends_app/model/data_controller_model.dart';
import 'package:we_are_friends_app/pages/friends/friends_controller.dart';

class FriendsListPage extends GetView<FriendsController> {
  const FriendsListPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return NsgListPage(
      type: NsgListPageMode.table,
      controller: controller,
      title: 'Список друзей',
      textNoItems: 'Добавьте друзей',
      elementEditPage: Routes.friendsPage,
      columns: [
        NsgTableColumn(
            name: FriendGenerated.nameLastName,
            presentation: 'Фамилия',
            width: 100),
        NsgTableColumn(
            name: FriendGenerated.nameFirstName,
            presentation: 'Имя',
            width: 100),
        NsgTableColumn(
            name: FriendGenerated.namePhone,
            presentation: 'Телефон',
            width: 100),
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
