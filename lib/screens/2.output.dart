import 'package:flutter/material.dart';
import 'dart:math';

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
    // Normalize the input (trim whitespace and lowercase)
    String normalizedTopOrBottom = topOrBottom?.trim().toLowerCase() ?? '';
    String normalizedFavoriteSubmission =
        favoriteSubmission?.trim().toLowerCase() ?? '';
    String normalizedTrainingFrequency =
        trainingFrequency?.trim().toLowerCase() ?? '';
    String normalizedTapResponse = tapResponse?.trim().toLowerCase() ?? '';

    // Animal options
    final List<Map<String, dynamic>> animalOptions = [
      {
        'animalType': 'House Cat',
        'topOrBottom': ['noPreference'],
        'favoriteSubmission': ['noFavorite'],
        'trainingFrequency': ['1', '2', '3'],
        'tapResponse': ['instantly', 'tryGetOut'],
        'resultDescription':
            'You are like a House Cat! Calm and relaxed, but always ready to react.',
        'imageUrl': 'images/housecat.jpeg',
      },
      {
        'animalType': 'Golden Retriever',
        'topOrBottom': ['noPreference'],
        'favoriteSubmission': ['noFavorite'],
        'trainingFrequency': ['1', '2', '3'],
        'tapResponse': ['instantly', 'tryGetOut'],
        'resultDescription':
            'Friendly and approachable, just like a Golden Retriever!',
        'imageUrl': 'images/goldenretriever.jpeg',
      },
      {
        'animalType': 'Koala',
        'topOrBottom': ['noPreference'],
        'favoriteSubmission': ['noFavorite'],
        'trainingFrequency': ['1', '2', '3'],
        'tapResponse': ['instantly', 'tryGetOut'],
        'resultDescription':
            'Like a Koala, you take your time and enjoy the process.',
        'imageUrl': 'images/koala.jpeg',
      },
      {
        'animalType': 'Bush Baby',
        'topOrBottom': ['noPreference'],
        'favoriteSubmission': ['noFavorite'],
        'trainingFrequency': ['1', '2', '3'],
        'tapResponse': ['instantly', 'tryGetOut'],
        'resultDescription': 'Quick and agile, just like a Bush Baby.',
        'imageUrl': 'images/bushbaby.jpeg',
      },
      {
        'animalType': 'Penguin',
        'topOrBottom': ['noPreference'],
        'favoriteSubmission': ['noFavorite'],
        'trainingFrequency': ['1', '2', '3'],
        'tapResponse': ['instantly', 'tryGetOut'],
        'resultDescription': 'Adaptable and resilient, much like a Penguin.',
        'imageUrl': 'images/penguin.jpeg',
      },
      {
        'animalType': 'Hamster',
        'topOrBottom': ['noPreference'],
        'favoriteSubmission': ['noFavorite'],
        'trainingFrequency': ['1', '2', '3'],
        'tapResponse': ['instantly', 'tryGetOut'],
        'resultDescription': 'Small but mighty, you are a Hamster in spirit!',
        'imageUrl': 'images/hamster.jpeg',
      },
      {
        'animalType': 'Hedgehog',
        'topOrBottom': ['noPreference'],
        'favoriteSubmission': ['noFavorite'],
        'trainingFrequency': ['1', '2', '3'],
        'tapResponse': ['instantly', 'tryGetOut'],
        'resultDescription': 'Defensive and careful, like a Hedgehog.',
        'imageUrl': 'images/hedgehog.jpeg',
      },
      {
        'animalType': 'Dolphin',
        'topOrBottom': ['bottom'],
        'favoriteSubmission': [
          'noFavorite',
          'armbar',
          'triangle',
          'heelhook',
          'rearNakedChoke',
          'guillotine',
          'kimura',
          'omoplata'
        ],
        'trainingFrequency': ['3', '4'],
        'tapResponse': ['tryGetOut'],
        'resultDescription': 'Smart and tactical, like a Dolphin.',
        'imageUrl': 'images/dolphin.jpeg',
      },
      {
        'animalType': 'Panda',
        'topOrBottom': ['top'],
        'favoriteSubmission': [
          'noFavorite',
          'armbar',
          'triangle',
          'heelhook',
          'rearNakedChoke',
          'guillotine',
          'kimura',
          'omoplata'
        ],
        'trainingFrequency': ['3', '4'],
        'tapResponse': ['tryGetOut'],
        'resultDescription': 'Relaxed yet powerful, like a Panda.',
        'imageUrl': 'images/panda.jpeg',
      },
      {
        'animalType': 'Zebra',
        'topOrBottom': ['top'],
        'favoriteSubmission': [
          'noFavorite',
          'armbar',
          'triangle',
          'heelhook',
          'rearNakedChoke',
          'guillotine',
          'kimura',
          'omoplata'
        ],
        'trainingFrequency': ['3', '4'],
        'tapResponse': ['tryGetOut'],
        'resultDescription': 'Agile and swift like a Zebra.',
        'imageUrl': 'images/zebra.jpeg',
      },
      {
        'animalType': 'Giraffe',
        'topOrBottom': ['bottom'],
        'favoriteSubmission': [
          'noFavorite',
          'armbar',
          'triangle',
          'heelhook',
          'rearNakedChoke',
          'guillotine',
          'kimura',
          'omoplata'
        ],
        'trainingFrequency': ['3', '4'],
        'tapResponse': ['tryGetOut'],
        'resultDescription': 'Graceful and composed like a Giraffe.',
        'imageUrl': 'images/giraffe.jpeg',
      },
      {
        'animalType': 'Meerkat',
        'topOrBottom': ['top'],
        'favoriteSubmission': [
          'noFavorite',
          'armbar',
          'triangle',
          'heelhook',
          'rearNakedChoke',
          'guillotine',
          'kimura',
          'omoplata'
        ],
        'trainingFrequency': ['3', '4'],
        'tapResponse': ['tryGetOut'],
        'resultDescription': 'Quick to react, like a Meerkat.',
        'imageUrl': 'images/meerkat.jpeg',
      },
      {
        'animalType': 'Shark',
        'topOrBottom': ['bottom'],
        'favoriteSubmission': [
          'noFavorite',
          'armbar',
          'triangle',
          'heelhook',
          'rearNakedChoke',
          'guillotine',
          'kimura',
          'omoplata'
        ],
        'trainingFrequency': ['5', '6'],
        'tapResponse': ['tryGetOut', 'Never'],
        'resultDescription':
            'Apex predator, strong and relentless, like a Shark.',
        'imageUrl': 'images/shark.jpeg',
      },
      {
        'animalType': 'Honey Badger',
        'topOrBottom': ['top'],
        'favoriteSubmission': [
          'noFavorite',
          'armbar',
          'triangle',
          'heelhook',
          'rearNakedChoke',
          'guillotine',
          'kimura',
          'omoplata'
        ],
        'trainingFrequency': ['5', '6'],
        'tapResponse': ['tryGetOut', 'Never'],
        'resultDescription': 'Fierce and tenacious like a Honey Badger.',
        'imageUrl': 'images/badger.jpeg',
      },
      {
        'animalType': 'Orca',
        'topOrBottom': ['bottom'],
        'favoriteSubmission': [
          'noFavorite',
          'armbar',
          'triangle',
          'heelhook',
          'rearNakedChoke',
          'guillotine',
          'kimura',
          'omoplata'
        ],
        'trainingFrequency': ['5', '6'],
        'tapResponse': ['tryGetOut', 'Never'],
        'resultDescription': 'Majestic and dominant, like an Orca.',
        'imageUrl': 'images/orca.jpeg',
      },
      {
        'animalType': 'Black Jaguar',
        'topOrBottom': ['top'],
        'favoriteSubmission': [
          'noFavorite',
          'armbar',
          'triangle',
          'heelhook',
          'rearNakedChoke',
          'guillotine',
          'kimura',
          'omoplata'
        ],
        'trainingFrequency': ['5', '6'],
        'tapResponse': ['tryGetOut', 'Never'],
        'resultDescription': 'Powerful and elusive like a Black Jaguar.',
        'imageUrl': 'images/jaguar.jpeg',
      },
      {
        'animalType': 'Tiger',
        'topOrBottom': ['top'],
        'favoriteSubmission': [
          'noFavorite',
          'armbar',
          'triangle',
          'heelhook',
          'rearNakedChoke',
          'guillotine',
          'kimura',
          'omoplata'
        ],
        'trainingFrequency': ['5', '6'],
        'tapResponse': ['tryGetOut', 'Never'],
        'resultDescription': 'Strong, confident, and fierce, like a Tiger.',
        'imageUrl': 'images/tiger.jpeg',
      },
      {
        'animalType': 'Lion',
        'topOrBottom': ['top'],
        'favoriteSubmission': [
          'noFavorite',
          'armbar',
          'triangle',
          'heelhook',
          'rearNakedChoke',
          'guillotine',
          'kimura',
          'omoplata'
        ],
        'trainingFrequency': ['5', '6'],
        'tapResponse': ['tryGetOut', 'Never'],
        'resultDescription': 'Brave and regal, like a Lion.',
        'imageUrl': 'images/lion.jpeg',
      },
      {
        'animalType': 'Wolf',
        'topOrBottom': ['bottom'],
        'favoriteSubmission': [
          'noFavorite',
          'armbar',
          'triangle',
          'heelhook',
          'rearNakedChoke',
          'guillotine',
          'kimura',
          'omoplata'
        ],
        'trainingFrequency': ['5', '6'],
        'tapResponse': ['tryGetOut', 'Never'],
        'resultDescription': 'Loyal, cunning, and powerful, like a Wolf.',
        'imageUrl': 'images/wolf.jpeg',
      },
    ];

    // Filter matching animals based on normalized input
    List<Map<String, dynamic>> matchingAnimals = animalOptions.where((option) {
      return option['topOrBottom']
              .map((e) => e.toLowerCase().trim())
              .contains(normalizedTopOrBottom) &&
          option['favoriteSubmission']
              .map((e) => e.toLowerCase().trim())
              .contains(normalizedFavoriteSubmission) &&
          option['trainingFrequency']
              .map((e) => e.toLowerCase().trim())
              .contains(normalizedTrainingFrequency) &&
          option['tapResponse']
              .map((e) => e.toLowerCase().trim())
              .contains(normalizedTapResponse);
    }).toList();

    // If no matching animals are found, return the default option (Golden Retriever)
    if (matchingAnimals.isEmpty) {
      return {
        'animalType': 'Golden Retriever',
        'resultDescription':
            'Friendly and approachable, just like a Golden Retriever!',
        'imageUrl': 'images/goldenretriever.jpeg'
      };
    }

    // Randomly select one animal from the matching animals
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
