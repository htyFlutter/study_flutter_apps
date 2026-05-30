import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';



class ChatAppsGemini extends StatefulWidget {
  const ChatAppsGemini({super.key});

  @override
  State<ChatAppsGemini> createState() => _ChatAppsGeminiState();
}

class _ChatAppsGeminiState extends State<ChatAppsGemini> {
  List<String> chatList = [];

  final TextEditingController _controller = TextEditingController();

  bool thinkingAndLoading = false;

  void askForGemini(String text) async {
    if (text.trim().isEmpty) {
      return;
    }
    setState(() {
      chatList.add(text);
    });

    setState(() {
      _controller.clear();
    });

    try {
      final model = GenerativeModel(
        model: 'gemini-1.5-flash',
        apiKey: 'AQ.Ab8RN6KghhZdQuTMOKQhTI0uIy9iJhkvjtbmM1o0-R8p2IBB-A',
      );

      final content = [Content.text(text)];

      final response = await model.generateContent(content);

      setState(() {
        chatList.add(response.text!);
        thinkingAndLoading = false;
      });
    } catch (e) {
      debugPrint('Gemini Error: $e');
      setState(() {
        chatList.add('エラーが発生しました。');
        thinkingAndLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gemini数学相談室',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chatList.length,
              itemBuilder: (BuildContext context, int index) {
                final message = chatList[index];

                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Align(
                    alignment: index % 2 == 0
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: index % 2 == 0
                            ? Colors.blueAccent
                            : Colors.grey[300],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        message,
                        style: TextStyle(
                          color: index % 2 == 0 ? Colors.white : Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          if (thinkingAndLoading)
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: LinearProgressIndicator(color: Colors.blueAccent),
            ),
          Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Gemini先生に質問してみよう！',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),

                IconButton(
                  onPressed: () {
                    askForGemini(_controller.text);
                  },
                  icon: Icon(Icons.send, color: Colors.blueAccent),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
