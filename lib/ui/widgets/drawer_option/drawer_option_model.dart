import 'package:myshowcase/models/drawer_item_data.dart';
import 'package:stacked/stacked.dart';

class DrawerOptionModel extends BaseViewModel {
  DrawerItem data;

  DrawerOptionModel({required this.data});
  DrawerItem get item => data;
}
