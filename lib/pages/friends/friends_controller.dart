import 'package:nsg_data/nsg_data.dart';
import 'package:we_are_friends_app/model/data_controller_model.dart';

class FriendsController extends NsgDataController<Friend> {
  FriendsController()
      : super(
            controllerMode: const NsgDataControllerMode(
                storageType: NsgDataStorageType.local));
}
