import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constant/constants.dart';
import 'package:whatsapp_clone/model/chat_model/chat_helper.dart';
import 'package:whatsapp_clone/model/chat_model/chat_item_model.dart';
import 'package:whatsapp_clone/view/chat_view.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ChatHelper.itemCount,
      itemBuilder: (context, position) {
        ChatItemModel chatItem = ChatHelper.getChatItem(position);
        return Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatScreen(
                      image: chatItem.image,
                      name: chatItem.name,
                    ),
                  ),
                );
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(
                    chatItem.image.toString(),
                  ),
                ),
                title: Text(
                  chatItem.name,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                subtitle: Row(
                  children: [
                    //this to check read in sent messages
                    Icon(
                      position % 2 == 0 ? Icons.done : Icons.done_all,
                      color: position % 2 == 0 ? Colors.grey : Colors.blue,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      chatItem.mostRecentMessage,
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    chatItem.messageDate,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontFamily: Regular,
                        ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
