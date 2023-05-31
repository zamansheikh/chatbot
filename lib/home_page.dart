import "package:chatbot/feature_box.dart";
import "package:chatbot/pallete.dart";
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat Bot"),
        leading: const Icon(Icons.menu),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Virtual Assistant Demo Picture
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(top: 4),
                    decoration: const BoxDecoration(
                      color: Pallete.assistantCircleColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Container(
                  height: 123,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                      'assets/images/virtualAssistant.png',
                    )),
                  ),
                )
              ],
            ),
            //Welcome Message
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
                top: 30,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Pallete.borderColor,
                ),
                borderRadius:
                    BorderRadius.circular(20).copyWith(topLeft: Radius.zero),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  "Good Morning I'am your chatBot, ask me anything",
                  style: TextStyle(
                    color: Pallete.mainFontColor,
                    fontFamily: "Cera Pro",
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            //Show Option
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(
                top: 10,
                left: 22,
              ),
              child: const Text(
                'Here are a few features',
                style: TextStyle(fontFamily: 'Cera Pro', fontSize: 20),
              ),
            ),
            //Features List
            const Column(
              children: [
                FeatureBox(
                  headerText: 'Chat GPT',
                  descriptionText:
                      "This is chatGPT , this is a Bad AI, Please avoid it, use Google Bard",
                  color: Pallete.firstSuggestionBoxColor,
                ),
                FeatureBox(
                  headerText: 'Dall-E',
                  descriptionText:
                      "This is Dall-E , Write command to Generate Image",
                  color: Pallete.secondSuggestionBoxColor,
                ),
                FeatureBox(
                  headerText: 'Smart Voic Assistant',
                  descriptionText: "This is Smart Voic Assistant , Command ME",
                  color: Pallete.thirdSuggestionBoxColor,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Pallete.firstSuggestionBoxColor,
        onPressed: () {},
        child: const Icon(Icons.mic),
      ),
    );
  }
}
