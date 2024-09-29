import 'package:flutter/material.dart';
import 'dart:math';
// import 'package:pawjitsu/constants.dart';

class PawJitsuResult extends StatelessWidget {
  final String? userName;
  final String? topOrBottom;
  final String? favoriteSubmission;
  final String? trainingFrequency;
  final String? tapResponse;

  const PawJitsuResult({
    super.key,
    required this.userName,
    required this.topOrBottom,
    required this.favoriteSubmission,
    required this.trainingFrequency,
    required this.tapResponse,
  });

  Map<String, dynamic> getAnimalType() {
    // Mapping animal options from the CSV to the Flutter logic
    final List<Map<String, dynamic>> animalOptions = [
      {
        'animalType': 'House Cat',
        'topOrBottom': ['No preference'],
        'favoriteSubmission': ["I don't have a favorite yet"],
        'trainingFrequency': ['1', '2', '3'],
        'tapResponse': ['Instantly', 'try to get out'],
        'resultDescription':
            'You are like a House Cat! Calm and relaxed, but always ready to react.',
        'imageUrl': 'images/housecat.jpeg',
      },
      {
        'animalType': 'Golden Retriever',
        'topOrBottom': ['No preference'],
        'favoriteSubmission': ["I don't have a favorite yet"],
        'trainingFrequency': ['1', '2', '3'],
        'tapResponse': ['Instantly', 'try to get out'],
        'resultDescription':
            'Friendly and approachable, just like a Golden Retriever!',
        'imageUrl': 'images/goldenretriever.jpeg',
      },
      {
        'animalType': 'Koala',
        'topOrBottom': ['No preference'],
        'favoriteSubmission': ["I don't have a favorite yet"],
        'trainingFrequency': ['1', '2', '3'],
        'tapResponse': ['Instantly', 'try to get out'],
        'resultDescription':
            'Like a Koala, you take your time and enjoy the process.',
        'imageUrl': 'images/koala.jpeg',
      },
      {
        'animalType': 'Bush Baby',
        'topOrBottom': ['No preference'],
        'favoriteSubmission': ["I don't have a favorite yet"],
        'trainingFrequency': ['1', '2', '3'],
        'tapResponse': ['Instantly', 'try to get out'],
        'resultDescription': 'Quick and agile, just like a Bush Baby.',
        'imageUrl': 'images/bushbaby.jpeg',
      },
      {
        'animalType': 'Penguin',
        'topOrBottom': ['No preference'],
        'favoriteSubmission': ["I don't have a favorite yet"],
        'trainingFrequency': ['1', '2', '3'],
        'tapResponse': ['Instantly', 'try to get out'],
        'resultDescription': 'Adaptable and resilient, much like a Penguin.',
        'imageUrl': 'images/penguin.jpeg',
      },
      {
        'animalType': 'Hamster',
        'topOrBottom': ['No preference'],
        'favoriteSubmission': ["I don't have a favorite yet"],
        'trainingFrequency': ['1', '2', '3'],
        'tapResponse': ['Instantly', 'try to get out'],
        'resultDescription': 'Small but mighty, you are a Hamster in spirit!',
        'imageUrl': 'images/hamster.jpeg',
      },
      {
        'animalType': 'Hedgehog',
        'topOrBottom': ['No preference'],
        'favoriteSubmission': ["I don't have a favorite yet"],
        'trainingFrequency': ['1', '2', '3'],
        'tapResponse': ['Instantly', 'try to get out'],
        'resultDescription': 'Defensive and careful, like a Hedgehog.',
        'imageUrl': 'images/hedgehog.jpeg',
      },
      {
        'animalType': 'Dolphin',
        'topOrBottom': ['Bottom'],
        'favoriteSubmission': ['Any'],
        'trainingFrequency': ['3', '4'],
        'tapResponse': ['Try to get out'],
        'resultDescription': 'Smart and tactical, like a Dolphin.',
        'imageUrl': 'images/dolphin.jpeg',
      },
      {
        'animalType': 'Panda',
        'topOrBottom': ['Top'],
        'favoriteSubmission': ['Any'],
        'trainingFrequency': ['3', '4'],
        'tapResponse': ['Try to get out'],
        'resultDescription': 'Relaxed yet powerful, like a Panda.',
        'imageUrl': 'images/panda.jpeg',
      },
      {
        'animalType': 'Zebra',
        'topOrBottom': ['Top'],
        'favoriteSubmission': ['Any'],
        'trainingFrequency': ['3', '4'],
        'tapResponse': ['Try to get out'],
        'resultDescription': 'Agile and swift like a Zebra.',
        'imageUrl': 'images/zebra.jpeg',
      },
      {
        'animalType': 'Giraffe',
        'topOrBottom': ['Bottom'],
        'favoriteSubmission': ['Any'],
        'trainingFrequency': ['3', '4'],
        'tapResponse': ['Try to get out'],
        'resultDescription': 'Graceful and composed like a Giraffe.',
        'imageUrl': 'images/giraffe.jpeg',
      },
      {
        'animalType': 'Meerkat',
        'topOrBottom': ['Top'],
        'favoriteSubmission': ['Any'],
        'trainingFrequency': ['3', '4'],
        'tapResponse': ['Try to get out'],
        'resultDescription': 'Quick to react, like a Meerkat.',
        'imageUrl': 'images/meerkat.jpeg',
      },
      {
        'animalType': 'Shark',
        'topOrBottom': ['Bottom'],
        'favoriteSubmission': ['Any'],
        'trainingFrequency': ['5', '6'],
        'tapResponse': ['Try to get out', 'Never'],
        'resultDescription':
            'Apex predator, strong and relentless, like a Shark.',
        'imageUrl': 'images/shark.jpeg',
      },
      {
        'animalType': 'Honey Badger',
        'topOrBottom': ['Top'],
        'favoriteSubmission': ['Any'],
        'trainingFrequency': ['5', '6'],
        'tapResponse': ['Try to get out', 'Never'],
        'resultDescription': 'Fierce and tenacious like a Honey Badger.',
        'imageUrl': 'images/badger.jpeg',
      },
      {
        'animalType': 'Orca',
        'topOrBottom': ['Bottom'],
        'favoriteSubmission': ['Any'],
        'trainingFrequency': ['5', '6'],
        'tapResponse': ['Try to get out', 'Never'],
        'resultDescription': 'Majestic and dominant, like an Orca.',
        'imageUrl': 'images/orca.jpeg',
      },
      {
        'animalType': 'Black Jaguar',
        'topOrBottom': ['Top'],
        'favoriteSubmission': ['Any'],
        'trainingFrequency': ['5', '6'],
        'tapResponse': ['Try to get out', 'Never'],
        'resultDescription': 'Powerful and elusive like a Black Jaguar.',
        'imageUrl': 'images/jaguar.jpeg',
      },
      {
        'animalType': 'Tiger',
        'topOrBottom': ['Top'],
        'favoriteSubmission': ['Any'],
        'trainingFrequency': ['5', '6'],
        'tapResponse': ['Try to get out', 'Never'],
        'resultDescription': 'Strong, confident, and fierce, like a Tiger.',
        'imageUrl': 'images/tiger.jpeg',
      },
      {
        'animalType': 'Lion',
        'topOrBottom': ['Top'],
        'favoriteSubmission': ['Any'],
        'trainingFrequency': ['5', '6'],
        'tapResponse': ['Try to get out', 'Never'],
        'resultDescription': 'Brave and regal, like a Lion.',
        'imageUrl': 'images/lion.jpeg',
      },
      {
        'animalType': 'Wolf',
        'topOrBottom': ['Bottom'],
        'favoriteSubmission': ['Any'],
        'trainingFrequency': ['5', '6'],
        'tapResponse': ['Try to get out', 'Never'],
        'resultDescription': 'Loyal, cunning, and powerful, like a Wolf.',
        'imageUrl': 'images/wolf.jpeg',
      },
    ];

    // Matching user selections to the correct animal type
    // return animalOptions.firstWhere(
    //   (option) =>
    //       option['topOrBottom'].contains(topOrBottom) &&
    //       option['favoriteSubmission'].contains(favoriteSubmission) &&
    //       option['trainingFrequency'].contains(trainingFrequency) &&
    //       option['tapResponse'].contains(tapResponse),
    //   orElse: () => {
    //     'animalType': 'Golden Retriever',
    //     'resultDescription':
    //         'Friendly and approachable, just like a Golden Retriever!',
    //     'imageUrl': 'images/goldenretriever.jpeg'
    //   },
    // );

    // Filter matching animals based on user input
    List<Map<String, dynamic>> matchingAnimals = animalOptions.where((option) {
      return option['topOrBottom'].contains(topOrBottom) &&
          option['favoriteSubmission'].contains(favoriteSubmission) &&
          option['trainingFrequency'].contains(trainingFrequency) &&
          option['tapResponse'].contains(tapResponse);
    }).toList();

    // If no match is found, default to Golden Retriever
    // if (matchingAnimals.isEmpty) {
    //   return {
    //     'animalType': 'Golden Retriever',
    //     'resultDescription':
    //         'Friendly and approachable, just like a Golden Retriever!',
    //     'imageUrl': 'images/goldenretriever.jpeg',
    //   };
    // }

    // Randomly select one matching animal
    final random = Random();
    Map<String, dynamic> randomAnimal =
        matchingAnimals[random.nextInt(matchingAnimals.length)];

    return randomAnimal;
  }

  @override
  Widget build(BuildContext context) {
    final result = getAnimalType();
    final String animalType = result['animalType'];
    final String resultDescription = result['resultDescription'];
    final String imageUrl = result['imageUrl'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Paw Jitsu - Result'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Paw Jitsu',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                'Your jiu-jitsu spirit animal is...',
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Text(
                userName != null ? 'Hey $userName!' : 'Hello!',
                style: const TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                'Based on your selections, you\'re most like a $animalType!',
                style: const TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  resultDescription,
                  style: const TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 24),
              Image.asset(imageUrl, height: 200), // Use local asset images
              const SizedBox(height: 24),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 27, 174, 149),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(
                      context); // Navigates back to the previous screen
                },
                child: const Text('Try Again'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
