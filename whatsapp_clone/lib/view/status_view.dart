import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/status_model/status_helper.dart';
import 'package:whatsapp_clone/model/status_model/status_item_model.dart';

class StatusView extends StatefulWidget {
  const StatusView({super.key});

  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: StatusHelper.itemCount,
      itemBuilder: (BuildContext context, position) {
        StatusItemModel statusItemModel = StatusHelper.getStatusItem(position);
        if (position == 0) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5, left: 20),
                child: Text(
                  "Recent Update",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 15),
                ),
              ),
              const Divider(),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage(statusItemModel.image),
                  ),
                ),
                title: Text(
                  statusItemModel.name,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                subtitle: Text(
                  statusItemModel.dateTime,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              )
            ],
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5, left: 20),
                child: Text(
                  "Recent Viewed",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 15),
                ),
              ),
              const Divider(),
              ListTile(
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(statusItemModel.image),
                ),
                title: Text(
                  statusItemModel.name,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                subtitle: Text(
                  statusItemModel.dateTime,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              )
            ],
          );
        }
      },
    );
  }
}
