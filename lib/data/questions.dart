import 'package:quiz_app/moddels/quiz_question.dart';

 const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion(
    'What is the primary function of the initState() method in a StatefulWidget?',
    [
      'It is called when the widget is inserted into the tree',
      'It is called when the widget is removed from the tree',
      'It is called when the widget is updated',
      'It is called when the widget is created for the first time',
    ],
  ),
  QuizQuestion(
    'In Flutter, what does the term "Hot Reload" refer to?',
    [
      'It allows you to quickly see the effects of the code changes without restarting the app',
      'It is a way to load assets dynamically at runtime',
      'It is a mechanism to reload the entire application from scratch',
      'It refers to the process of updating the Flutter framework to the latest version',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the pubspec.yaml file in a Flutter project?',
    [
      'It is used to specify the project dependencies and metadata',
      'It is the main entry point of the Flutter application',
      'It defines the layout of the user interface',
      'It is used to configure the app\'s launch settings',
    ],
  ),
  QuizQuestion(
    'When creating a new Flutter project, what command can be used in the terminal?',
    [
      'flutter create my_project',
      'dart new my_project',
      'project create my_project',
      'create flutter my_project',
    ],
  ),


];