import 'package:whatsapp_clone/call_model/call_item_model.dart';

class CallHelper {
  static var callList = [
    CallItemModel("Mark Zuckerberg", "Outgoing, 2:32 PM",
        "https://cdn.britannica.com/99/236599-050-1199AD2C/Mark-Zuckerberg-2019.jpg"),
    CallItemModel("Satya Nadella", "Incoming, 6:30 PM",
        "https://media.licdn.com/dms/image/C5603AQHHUuOSlRVA1w/profile-displayphoto-shrink_800_800/0/1579726625483?e=2147483647&v=beta&t=HLYpgidqy91UTizxxOqBjYHTSSV7dP7N86FRl7DlCBY")
  ];

  static CallItemModel getCallItem(int position) {
    return callList[position];
  }

  static var itemCount = callList.length;
}
