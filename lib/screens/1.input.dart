import 'package:flutter/material.dart';
import '2.output.dart';

class PawJitsuForm extends StatelessWidget {
  const PawJitsuForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paw Jitsu - Input',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Paw Jitsu - Input'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(66.0), // Overall padding around the form
          child: FormContainer(),
        ),
      ),
    );
  }
}

class FormContainer extends StatefulWidget {
  const FormContainer({super.key});

  @override
  FormContainerState createState() => FormContainerState();
}

class FormContainerState extends State<FormContainer> {
  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  String? _topOrBottom;
  String? _favoriteSubmission;
  String? _trainingFrequency;
  String? _tapResponse;

  void submitForm() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PawJitsuResult(
            userName: _userNameController.text,
            topOrBottom: _topOrBottom,
            favoriteSubmission: _favoriteSubmission,
            trainingFrequency: _trainingFrequency,
            tapResponse: _tapResponse,
          ),
        ),
      );
    } else {
      print("Name: ${_userNameController.text}");
      print("Position preference: $_topOrBottom");
      print("Favorite submission: $_favoriteSubmission");
      print("Training frequency: $_trainingFrequency");
      print("Tap response: $_tapResponse");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Center(
                  child: Column(
                    children: [
                      Text(
                        'Paw Jitsu',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'What is your jiu-jitsu spirit animal?',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ),

                // Name input with padding on left and right
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 66.0),
                  child: TextFormField(
                    controller: _userNameController,
                    decoration: const InputDecoration(
                      labelText: 'Enter your name',
                      hintText: 'Your name...',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 16),

                // Dropdown for top or bottom position with padding
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 66.0),
                  child: DropdownButtonFormField<String>(
                    value: _topOrBottom,
                    decoration: const InputDecoration(
                        labelText: 'Do you prefer top position or pull guard?'),
                    items: const [
                      DropdownMenuItem(
                          value: 'noPreference', child: Text('No preference')),
                      DropdownMenuItem(value: 'top', child: Text('Prefer top')),
                      DropdownMenuItem(
                          value: 'bottom', child: Text('Pull Guard')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _topOrBottom = value;
                      });
                    },
                    validator: (value) =>
                        value == null ? 'Please select an option' : null,
                  ),
                ),
                const SizedBox(height: 16),

                // Dropdown for favorite submission with padding
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 66.0),
                  child: DropdownButtonFormField<String>(
                    value: _favoriteSubmission,
                    decoration: const InputDecoration(
                        labelText: 'What is your favorite submission?'),
                    items: const [
                      DropdownMenuItem(
                          value: 'noFavorite',
                          child: Text('I don\'t have a favorite yet')),
                      DropdownMenuItem(value: 'armbar', child: Text('Armbar')),
                      DropdownMenuItem(
                          value: 'triangle', child: Text('Triangle')),
                      DropdownMenuItem(
                          value: 'heelhook', child: Text('Heel-hook')),
                      DropdownMenuItem(
                          value: 'rearNakedChoke',
                          child: Text('Rear naked choke')),
                      DropdownMenuItem(
                          value: 'guillotine', child: Text('Guillotine')),
                      DropdownMenuItem(value: 'kimura', child: Text('Kimura')),
                      DropdownMenuItem(
                          value: 'omoplata', child: Text('Omoplata')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _favoriteSubmission = value;
                      });
                    },
                    validator: (value) =>
                        value == null ? 'Please select an option' : null,
                  ),
                ),
                const SizedBox(height: 16),

                // Dropdown for training frequency with padding
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 66.0),
                  child: DropdownButtonFormField<String>(
                    value: _trainingFrequency,
                    decoration: const InputDecoration(
                        labelText: 'How often do you train?'),
                    items: const [
                      DropdownMenuItem(
                          value: 'one', child: Text('Once a week')),
                      DropdownMenuItem(
                          value: 'two', child: Text('Twice a week')),
                      DropdownMenuItem(
                          value: 'three', child: Text('Three times a week')),
                      DropdownMenuItem(
                          value: 'four', child: Text('Four times a week')),
                      DropdownMenuItem(
                          value: 'five', child: Text('Five times a week')),
                      DropdownMenuItem(
                          value: 'six',
                          child: Text('More than five times a week')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _trainingFrequency = value;
                      });
                    },
                    validator: (value) =>
                        value == null ? 'Please select an option' : null,
                  ),
                ),
                const SizedBox(height: 16),

                // Dropdown for tap response with padding
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 66.0),
                  child: DropdownButtonFormField<String>(
                    value: _tapResponse,
                    decoration: const InputDecoration(
                        labelText: 'How easily do you tap?'),
                    items: const [
                      DropdownMenuItem(
                          value: 'instantly', child: Text('Instantly')),
                      DropdownMenuItem(
                          value: 'tryGetOut',
                          child: Text('Will try and get out')),
                      DropdownMenuItem(value: 'never', child: Text('Never')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _tapResponse = value;
                      });
                    },
                    validator: (value) =>
                        value == null ? 'Please select an option' : null,
                  ),
                ),
                const SizedBox(height: 16),

                // Submit button

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 66.0),
                  child: SizedBox(
                    // width: 200,
                    child: ElevatedButton(
                      onPressed: submitForm,
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 27, 174, 149),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Find Out!'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//'noFavorite','armbar','triangle','heelhook','rearNakedChoke','guillotine','kimura','omoplata'
                