import 'chat_item_model.dart';

class ChatHelper {
  //this is the data of the chat list
  static var chatList = [
    ChatItemModel("Elon Musk", "Give me reminder", " 10:28 AM",
        "https://variety.com/wp-content/uploads/2023/02/Elon-Musk.jpg?w=1000&h=563&crop=1"),
    ChatItemModel("Sundar Pichai", "When will i get offer letter?", "10:28 AM",
        "https://assets.weforum.org/sf_account/image/rA_TF_tkRNKjxk_gzlr9UlBXMhuoPZNeRaRO7-ys_xw.jpg"),
    ChatItemModel("Mark Zuckerberg", "Flutter developer.", "Yesterday",
        "https://cdn.britannica.com/99/236599-050-1199AD2C/Mark-Zuckerberg-2019.jpg"),
    ChatItemModel("Tim Cook", "We had meeting tomorrow.", "Wednesday",
        "https://pbs.twimg.com/profile_images/1535420431766671360/Pwq-1eJc_400x400.jpg"),
    ChatItemModel("Satya Nadella", "I will join from tomorrow.", "08/03/2024",
        "https://media.licdn.com/dms/image/C5603AQHHUuOSlRVA1w/profile-displayphoto-shrink_800_800/0/1579726625483?e=2147483647&v=beta&t=HLYpgidqy91UTizxxOqBjYHTSSV7dP7N86FRl7DlCBY")
  ];

  static ChatItemModel getChatItem(int position) {
    return chatList[position];
  }

  static var itemCount = chatList.length;
}
