import 'package:flutter/material.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/config/storage/onboarding.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/config/storage/tema_storage.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/screens/Onboarding/onboardingContent.dart';

class OnboradingScreen extends StatefulWidget {
  const OnboradingScreen({super.key});

  @override
  State<OnboradingScreen> createState() => _OnboradingScreenState();
}

class _OnboradingScreenState extends State<OnboradingScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: contents.length,
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: [
                        Image.asset(
                          contents[i].Image,
                          width: MediaQuery.of(context).size.width * .5,
                        ),
                        Text(
                          contents[i].title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          contents[i].disposition,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 18),
                        )
                      ],
                    ),
                  );
                }),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  List.generate(contents.length, (index) => buildDot(index)),
            ),
          ),
          Container(
              height: 55,
              width: double.infinity,
              // color: Color.fromARGB(122, 181, 15, 15),
              margin: const EdgeInsets.all(40),
              child: FloatingActionButton(
                onPressed: () {
                  if (currentIndex == contents.length - 1) {
                    Navigator.pushNamed(context, '/MenuApp');
                    OnboardingVisto Guardar = OnboardingVisto();
                    Guardar.saveOnboarding(1);
                  }
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.bounceIn);
                },
                child: Text(
                    currentIndex == contents.length - 1 ? 'Continuar' : 'Next'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ))
        ],
      ),
    );
  }

  Container buildDot(int index) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      width: currentIndex == index ? 25 : 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 248, 8, 8),
      ),
      // Suponiendo que 'contents' es una lista de Strings
    );
  }
}
