import 'package:whatsapp_clone/model/status_model/status_item_model.dart';

class StatusHelper {
  static var statusList = [
    StatusItemModel("Elon Musk", "Yesterday, 21:22 PM",
        "https://variety.com/wp-content/uploads/2023/02/Elon-Musk.jpg?w=1000&h=563&crop=1"),
    StatusItemModel("Sundar Pichai", "Yesterday, 09:09 PM",
        "https://assets.weforum.org/sf_account/image/rA_TF_tkRNKjxk_gzlr9UlBXMhuoPZNeRaRO7-ys_xw.jpg")
  ];

  static StatusItemModel getStatusItem(int position) {
    return statusList[position];
  }

  static var itemCount = statusList.length;
}
