import 'package:chatbot/constants/constants.dart';
import 'package:chatbot/services/assets_manager.dart';
import 'package:chatbot/services/services.dart';
import 'package:chatbot/widgets/chat_widget.dart';
import 'package:chatbot/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final bool istyping = true;
  late TextEditingController textEditingController;
  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(AssetsManager.openaiLogo),
          ),
          title: const Text('ChatBOT'),
          actions: [
            IconButton(
              onPressed: () async {
                await Services.showmodalsheet(context: context);
              },
              icon: const Icon(Icons.more_vert_rounded),
              color: Colors.white,
            )
          ],
        ),
        body: SafeArea(
            child: Column(
          children: [
            Flexible(
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Chatwidget(
                          msg: chatMessages[index]["msg"].toString(),
                          chatindex: int.parse(
                              chatMessages[index]["chatIndex"].toString()));
                    })),
            if (istyping) ...[
              const SpinKitThreeBounce(
                color: Colors.white,
                size: 20,
              ),
              SizedBox(
                height: 15,
              ),
              Material(
                color: cardColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextField(
                              style: TextStyle(color: Colors.white),
                              controller: textEditingController,
                              onSubmitted: (value) {},
                              decoration: InputDecoration.collapsed(
                                hintText: 'How can I help you?',
                                hintStyle: TextStyle(color: Colors.grey),
                              ))),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.send,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
              )
            ]
          ],
        )));
  }
}
