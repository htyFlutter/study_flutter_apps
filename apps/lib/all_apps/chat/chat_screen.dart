import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class ChatApps extends StatefulWidget {
  const ChatApps({super.key});

  @override
  State<ChatApps> createState() => _ChatAppsState();
}

class _ChatAppsState extends State<ChatApps> {
  List<String> chatList = [];
  final TextEditingController _controller = TextEditingController();
  bool thinkingAndLoading = false;

  @override
  void initState() {
    super.initState();
  }

  void askForGemini(String text) async {
    //【ステップ①：注文のチェックとお掃除】
    if (_controller.text == '') {
      return;
    } else {
      setState(() {
        chatList.add(text);
        _controller.clear();
      });
    }

    //【ステップ②：考え中スイッチを入れる】
    setState(() {
      thinkingAndLoading = true;
    });

    //【ステップ③：厨房（Gemini）にメッセージを送る】
    final model = GenerativeModel(
      model: 'models/gemini-2.5-flash',
      apiKey: 'AQ.Ab8RN6L5AZUyf3C2X6iXZ9_Khcd6MjERVBDYJyQn3kGlSUuKPg',
    );
    final content = [Content.text(text)];
    final response = await model.generateContent(content);

    setState(() {
      chatList.add(response.text ?? '返事がありませんでした。');
      thinkingAndLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gemini数学相談室',
          style: TextStyle(
            color: Color.fromRGBO(2, 0, 247, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chatList.length,
              itemBuilder: (BuildContext context, int index) {
                Container(height: 30);
                return Text(chatList[index]);
              },
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: TextField()),
              IconButton(
                onPressed: () {
                  askForGemini(_controller.text);
                },
                icon: Icon(Icons.chat),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
