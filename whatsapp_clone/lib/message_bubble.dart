import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MessageBubble extends StatelessWidget {
  MessageBubble({
    super.key,
    required this.isMe,
    required this.message,
    required this.time,
    required this.onPress,
    required this.index,
    required this.listLength,
    required this.isSeen,
    required this.type,
  });

  final bool isMe;
  final String message, type;
  final String time;
  final VoidCallback onPress;
  int index;
  int listLength;
  bool isSeen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment:
            index % 2 == 0 ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 2,
          ),

          if (type == "msj")
            Align(
              alignment:
                  index % 2 == 0 ? Alignment.centerRight : Alignment.centerLeft,
              child: InkWell(
                onTap: onPress,
                child: Material(
                  elevation: 1,
                  color: index % 2 == 0
                      ? Colors.teal
                      : Colors.black.withOpacity(0.5),
                  borderRadius: index % 2 == 0
                      ? const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(10))
                      : const BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(0)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    child: Text(
                      message,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          if (type == "image")
            Align(
              alignment:
                  index % 2 == 0 ? Alignment.centerRight : Alignment.centerLeft,
              child: InkWell(
                onTap: onPress,
                child: Material(
                  elevation: 1,
                  borderRadius: index % 2 == 0
                      ? const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(10))
                      : const BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(0)),
                  color: index % 2 == 0
                      ? Colors.teal
                      : Colors.black.withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image(
                        height: MediaQuery.of(context).size.height * .3,
                        width: MediaQuery.of(context).size.width * .6,
                        fit: BoxFit.cover,
                        image: NetworkImage(message)),
                  ),
                ),
              ),
            ),

          const SizedBox(
            height: 2,
          ),
          Text(
            time.toString(),
            maxLines: 1,
            style: Theme.of(context).textTheme.bodyLarge,
          ),

          const SizedBox(
            height: 4,
          ),
          // Text(time.toString())
        ],
      ),
    );
  }
}
