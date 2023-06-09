import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';

class AIHandler {
  final _openAI = OpenAI.instance.build(
      token: "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",
      baseOption: HttpSetup(
        receiveTimeout: const Duration(seconds: 5),
        connectTimeout: const Duration(seconds: 60),
      ),
      enableLog: true);

  Future<String> getResponse(String message) async {
    try {
      final request = ChatCompleteText(messages: [
        Map.of({"role": "user", "content": message})
      ], maxToken: 200, model: GptTurboChatModel());

      final response = await _openAI.onChatCompletion(request: request);
      if (response != null) {
        return response.choices[0].message!.content.trim();
      }

      return 'Some thing went wrong';
    } catch (e) {
      return 'Bad response';
    }
  }

  void dispose() {
    // _openAI.close();
  }
}
