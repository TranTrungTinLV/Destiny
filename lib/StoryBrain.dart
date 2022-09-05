import 'package:destinis/main.dart';

import 'Story.dart';

class StoryBrain {
  List<Story> _StoryBank = [
    Story(
        storyTitle:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.'),
    Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.'),
    Story(
        storyTitle:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyTitle:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: ''),
  ];

  String getStory() {
    return _StoryBank[_number].storyTitle;
  }

  String getchoice1() {
    return _StoryBank[_number].choice1;
  }

  String getchoice2() {
    return _StoryBank[_number].choice2;
  }

  int _number = 0;
  void check(int choiceNumber) {
    if (choiceNumber == 1 && _number == 0) {
      _number = 2;
    } else if (choiceNumber == 2 && _number == 0) {
      _number = 1;
    } else if (choiceNumber == 1 && _number == 1) {
      _number = 2;
    } else if (choiceNumber == 2 && _number == 1) {
      _number = 3;
    } else if (choiceNumber == 1 && _number == 2) {
      _number = 5;
    } else if (choiceNumber == 2 && _number == 2) {
      _number = 4;
    } else if (_number == 3 || _number == 4 || _number == 5) {
      return restart();
    }
  }

  void restart() {
    _number = 0;
  }
}
