import 'package:chatbot/constants/constants.dart';
import 'package:chatbot/services/assets_manager.dart';
import 'package:chatbot/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class Chatwidget extends StatelessWidget {
  const Chatwidget({Key? key, required this.msg, required this.chatindex})
      : super(key: key);
  final String msg;
  final int chatindex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
            color: chatindex == 0 ? scaffoldBackgroundColor : cardColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Image.asset(
                  chatindex == 0
                      ? AssetsManager.userImage
                      : AssetsManager.botImage,
                  height: 30,
                  width: 30,
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(child: TextWidget(label: msg)),
                chatindex == 0
                    ? const SizedBox.shrink()
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.thumb_up_alt_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.thumb_down_alt_outlined,
                            color: Colors.white,
                          )
                        ],
                      ),
              ]),
            ))
      ],
    );
  }
}
