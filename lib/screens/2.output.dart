import 'package:flutter/material.dart';
import 'package:pawjitsu/constants.dart';

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

  Map<String, dynamic> getDogType() {
    final List<Map<String, dynamic>> dogOptions = [
      {
        'dogType': 'House Cat',
        'topOrBottom': ['top', 'bottom'],
        'favoriteSubmission': ['noFavorite'],
        'trainingFrequency': ['one', 'two'],
        'tapResponse': ['instantly'],
        'resultDescription': houseCatDescription,
        'imageUrl': 'images/housecat.jpeg',
      },
      {
        'dogType': 'Honey Badger',
        'topOrBottom': ['top'],
        'favoriteSubmission': ['armbar', 'omoplata', 'guillotine'],
        'trainingFrequency': ['four', 'five', 'more'],
        'tapResponse': ['tryGetOut', 'never'],
        'resultDescription': badgerDescription,
        'imageUrl': 'images/badger.jpeg',
      },
      {
        'dogType': 'Dolphin',
        'topOrBottom': ['bottom'],
        'favoriteSubmission': ['omoplata', 'rearNakedChoke', 'heelhook'],
        'trainingFrequency': ['two', 'three', 'four'],
        'tapResponse': ['instantly', 'tryGetOut'],
        'resultDescription': dolphinDescription,
        'imageUrl': 'images/dolphin.jpeg',
      },
      {
        'dogType': 'Panda',
        'topOrBottom': ['top'],
        'favoriteSubmission': ['kimura', 'triangle', 'heelhook'],
        'trainingFrequency': ['one', 'two'],
        'tapResponse': ['instantly', 'tryGetOut'],
        'resultDescription': pandaDescription,
        'imageUrl': 'images/panda.jpeg',
      },
      {
        'dogType': 'Great Dane',
        'topOrBottom': ['bottom'],
        'favoriteSubmission': [
          'triangle',
          'rearNakedChoke',
        ],
        'trainingFrequency': ['two', 'three'],
        'tapResponse': ['tryGetOut'],
        'resultDescription': greatDaneDescription,
        'imageUrl': 'images/greatdane.jpeg',
      },
      {
        'dogType': 'Jack Russell',
        'topOrBottom': ['top'],
        'favoriteSubmission': ['guillotine', 'armbar'],
        'trainingFrequency': ['two', 'three'],
        'tapResponse': ['tryGetOut'],
        'resultDescription': jackRussellDescription,
        'imageUrl': 'images/jackrussel.jpeg',
      },
      {
        'dogType': 'Koala',
        'topOrBottom': ['top'],
        'favoriteSubmission': [
          'omoplata',
          'rearNakedChoke',
          'kimura',
          'triangle'
        ],
        'trainingFrequency': ['two', 'three', 'four'],
        'tapResponse': ['instantly', 'tryGetOut'],
        'resultDescription': koalaDescription,
        'imageUrl': 'images/koala.jpeg',
      },
      {
        'dogType': 'Doberman',
        'topOrBottom': ['bottom'],
        'favoriteSubmission': ['heelhook', 'kimura', 'guillotine'],
        'trainingFrequency': ['four', 'five', 'more'],
        'tapResponse': ['tryGetOut', 'never'],
        'resultDescription': dobermanDescription,
        'imageUrl': 'images/doberman.jpeg',
      },
      {
        'dogType': 'Jaguar',
        'topOrBottom': ['top'],
        'favoriteSubmission': [
          'armbar',
          'heelhook',
          'rearNakedChoke',
          'guillotine'
        ],
        'trainingFrequency': ['four', 'five', 'six'],
        'tapResponse': ['never'],
        'resultDescription': jaguarDescription,
        'imageUrl': 'images/jaguar.jpeg',
      },
    ];

    return dogOptions.firstWhere(
      (option) =>
          option['topOrBottom'].contains(topOrBottom) &&
          option['favoriteSubmission'].contains(favoriteSubmission) &&
          option['trainingFrequency'].contains(trainingFrequency) &&
          option['tapResponse'].contains(tapResponse),
      orElse: () => {
        'dogType': 'Golden Retriever',
        'resultDescription': goldenRetrieverDescription,
        'imageUrl': 'images/goldenretriever.jpeg'
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final result = getDogType();
    final String dogType = result['dogType'];
    final String resultDescription = result['resultDescription'];
    final String imageUrl = result['imageUrl'];

    return Scaffold(
      appBar: AppBar(
          // title: const Text('Paw Jitsu - Result'),
          ),
      body: Padding(
        padding: const EdgeInsets.all(66.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.center,
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
            SizedBox(
              width: 200,
              child: Text(
                'Hey $userName! Based on your selections, you\'re most like a $dogType!',
                style: const TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              resultDescription,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Image.network(imageUrl, height: 400),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 66.0),
              child: SizedBox(
                // width: 200,
                child: ElevatedButton(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
