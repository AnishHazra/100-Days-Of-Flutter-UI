import 'package:whatsapp_clone/model/message_model/message_model.dart';

class MessageHelper {
  static var messageList = [
    MessageItemModel("Me", "Good morning, Sir", "10:10 AM", "msj"),
    MessageItemModel("Sundar Pichai", "Good morning! How can I help you today?",
        "10:20 AM", "msj"),
    MessageItemModel("Me", "When will i get my salary??", "10:30 AM", "msj"),
    MessageItemModel(
        "Sundar Pichai", "I will pay you soon.", "10:40 AM", "msj"),
    MessageItemModel(
        "Me",
        "https://scontent.xx.fbcdn.net/v/t1.15752-9/431488578_791682702815766_1532456150612003984_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=5f2048&_nc_ohc=SOF52sXnncMAX8P1oht&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdRFZ-VTq_VRgaOM7MmT2eD77332l68yrdvk7SWe-S9tCw&oe=66166425",
        " 10:58 AM",
        "image"),
    MessageItemModel(
        "Sundar Pichai",
        "https://scontent.xx.fbcdn.net/v/t1.15752-9/431545408_325016067231428_3519283921971467634_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=5f2048&_nc_ohc=g-wn8OQI9LQAX-Pcy3O&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdRrrjpx9WTssZxI0lVurHqvglOeo2TAB2iPkenyPCph1w&oe=66167B3D",
        "11:00 AM",
        "image"),
    MessageItemModel("Me", "Please sir🥹", "11:20 AM", "msj"),
    MessageItemModel("Sundar Pichai", "Okay", "10:10 PM", "msj"),
    MessageItemModel(
        "Sundar Pichai",
        "https://scontent.xx.fbcdn.net/v/t1.15752-9/431227350_1783381922173100_7263157113426926082_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_ohc=esliXQfKp50AX-pvDhY&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdQw_LO8MWwI-WT79XLHD98iTXoqA5-pANdend-2odx6aA&oe=66167EB8",
        "11:30 PM",
        "image"),
    MessageItemModel(
        "Sundar Pichai", "Finish the work fast", "11:40 PM", "msj"),
    MessageItemModel("Me", "Sure🤡🤡", "11:50 PM", "msj"),
  ];

  static MessageItemModel getCHatList(int position) {
    return messageList[position];
  }

  static var itemCount = messageList.length;
}
