import 'package:flutter/material.dart';
import 'package:whatsapp_clone/message_bubble.dart';
import 'package:whatsapp_clone/model/message_model/message_helper.dart';
import 'package:whatsapp_clone/model/message_model/message_model.dart';

class ChatScreen extends StatefulWidget {
  final String image, name;
  const ChatScreen({super.key, required this.image, required this.name});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(widget.image),
            ),
            const SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(widget.name),
            )
          ],
        ),
        actions: const [
          Icon(Icons.call),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.video_call_outlined),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: MessageHelper.itemCount,
                  itemBuilder: (context, index) {
                    MessageItemModel chatItem =
                        MessageHelper.getCHatList(index);
                    return Column(
                      crossAxisAlignment: index % 2 == 0
                          ? CrossAxisAlignment.end
                          : CrossAxisAlignment.start,
                      children: [
                        MessageBubble(
                          index: index,
                          message: chatItem.mostRecentMessage,
                          isSeen: false,
                          isMe: false,
                          time: chatItem.messageDate,
                          onPress: () {},
                          listLength: MessageHelper.itemCount,
                          type: chatItem.type,
                        )
                      ],
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey.shade100),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  style: const TextStyle(
                                      fontSize: 16, color: Color(0xff9C9EB9)),
                                  onChanged: (value) {},
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 0.0),
                                    hintText: 'Message...',
                                    hintStyle: TextStyle(
                                      color: Color(0xff8E8E93),
                                    ),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                              const Icon(Icons.attach_file),
                              const SizedBox(
                                width: 5,
                              ),
                              const Icon(Icons.camera_alt),
                              const SizedBox(
                                width: 5,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const CircleAvatar(
                    backgroundColor: Color(0xff008679),
                    radius: 20,
                    child: Icon(
                      Icons.mic,
                      size: 19,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
