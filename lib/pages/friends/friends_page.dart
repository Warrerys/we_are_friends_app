import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nsg_controls/nsg_controls.dart';
import 'package:we_are_friends_app/model/data_controller_model.dart';
import 'package:we_are_friends_app/pages/friends/friends_controller.dart';

class FriendsPage extends GetView<FriendsController> {
  FriendsPage({Key? key}) : super(key: key);

  final _textTitle = 'Редактирование друга'.toUpperCase();
  final _textTitleNew = 'Добавление друга'.toUpperCase();

  @override
  Widget build(BuildContext context) {
    return BodyWrap(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: controller.obx((state) => Container(
            key: GlobalKey(),
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                NsgAppBar(
                  text: controller.currentItem.isEmpty
                      ? _textTitleNew
                      : _textTitle,
                  icon: Icons.arrow_back_ios_new,
                  colorsInverted: true,
                  bottomCircular: true,
                  onPressed: () {
                    controller.itemPageCancel();
                  },
                  icon2: Icons.check,
                  onPressed2: () {
                    controller.itemPageCancel();
                  },
                ),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 15),
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      NsgInput(
                        dataItem: controller.currentItem,
                        fieldName: FriendGenerated.nameLastName,
                        label: 'Фамилия',
                      ),
                      NsgInput(
                        dataItem: controller.currentItem,
                        fieldName: FriendGenerated.nameFirstName,
                        label: 'Имя',
                      ),
                      NsgInput(
                        dataItem: controller.currentItem,
                        fieldName: FriendGenerated.namePhone,
                        label: 'Номер телефона',
                      ),
                    ],
                  )),
                ))
              ],
            ),
          )),
    ));
  }
}
