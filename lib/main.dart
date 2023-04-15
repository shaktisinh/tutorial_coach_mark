import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import 'coach_mark.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

TutorialCoachMark? tutorialCoachMark;
  List<TargetFocus> targets = [];

  GlobalKey filterKey = GlobalKey();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tutorial Coach Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Tutorial Coach Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TutorialCoachMark? tutorialCoachMark;
  List<TargetFocus> targets = [];

  GlobalKey key1 = GlobalKey();
  GlobalKey key2 = GlobalKey();
  GlobalKey key3 = GlobalKey();
  GlobalKey key4 = GlobalKey();
  GlobalKey key5 = GlobalKey();

  @override
  initState() {
    _showTutorialCoachMark();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Icon(
                 key:key1,
                  Icons.image,
                  size: 50,
                ),
              const  SizedBox(
                  height: 20,
                ),
                TextField(
                  key: key2,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a search text',
                  ),
                ),
              const  SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      key: key3,
                      Icons.settings,
                      size: 50,
                    ),
                    Icon(
                      key: key4,
                      Icons.access_alarm,
                      size: 50,
                    ),
                    Icon(
                      key: key5,
                      Icons.access_time,
                      size: 50,
                    ),
                  ],
                )
              ],
            )));
  }

  void _showTutorialCoachMark() {
    _initTargets();
    tutorialCoachMark = TutorialCoachMark(
        targets: targets,
        pulseEnable: false,
        colorShadow: Colors.black,
        hideSkip: true)
      ..show(context: context);
  }

  void _initTargets() {
    targets = [
      TargetFocus(
          shape: ShapeLightFocus.Circle,
          identify: "key1",
          keyTarget: key1,
          contents: [
            TargetContent(
                align: ContentAlign.bottom,
                builder: (context, controller) {
                  return CoachMarkDesc(
                    text: "Lorem ipsum dolor sit amet. Aut itaque aliquid et dolorem nihil qui Quis dolorem et perferendis internos sit expedita asperiores et vero culpa. Aut quia libero sed vero quis et internos alias est provident earum. ",
                    skip: 'Skip',
                    next: 'Next',
                    onSkip: () {
                      controller.skip();
                    },
                    onNext: () {
                      controller.next();
                    },
                  );
                })
          ]),
      TargetFocus(
          shape: ShapeLightFocus.RRect,
          identify: "key2",
          keyTarget: key2,
          contents: [
            TargetContent(
                align: ContentAlign.bottom,
                builder: (context, controller) {
                  return CoachMarkDesc(
                    text: "Lorem ipsum dolor sit amet. Aut itaque aliquid et dolorem nihil qui Quis dolorem et perferendis internos sit expedita asperiores et vero culpa. Aut quia libero sed vero quis et internos alias est provident earum. ",
                    skip: 'Skip',
                    next: 'Next',
                    onSkip: () {
                      controller.skip();
                    },
                    onNext: () {
                      controller.next();
                    },
                  );
                })
          ]),
      TargetFocus(
          shape: ShapeLightFocus.Circle,
          identify: "key3",
          keyTarget: key3,
          contents: [
            TargetContent(
                align: ContentAlign.top,
                builder: (context, controller) {
                  return CoachMarkDesc(
                    text: "Lorem ipsum dolor sit amet. Aut itaque aliquid et dolorem nihil qui Quis dolorem et perferendis internos sit expedita asperiores et vero culpa. Aut quia libero sed vero quis et internos alias est provident earum. ",
                    skip: 'Skip',
                    next: 'Next',
                    onSkip: () {
                      controller.skip();
                    },
                    onNext: () {
                      controller.next();
                    },
                  );
                })
          ]),
      TargetFocus(
          shape: ShapeLightFocus.Circle,
          identify: "key4",
          keyTarget: key4,
          contents: [
            TargetContent(
                align: ContentAlign.bottom,
                builder: (context, controller) {
                  return CoachMarkDesc(
                    text: "Lorem ipsum dolor sit amet. Aut itaque aliquid et dolorem nihil qui Quis dolorem et perferendis internos sit expedita asperiores et vero culpa. Aut quia libero sed vero quis et internos alias est provident earum. ",
                    skip: 'Skip',
                    next: 'Next',
                    onSkip: () {
                      controller.skip();
                    },
                    onNext: () {
                      controller.next();
                    },
                  );
                })
          ]),
      TargetFocus(
          shape: ShapeLightFocus.Circle,
          identify: "key5",
          keyTarget: key5,
          contents: [
            TargetContent(
                align: ContentAlign.bottom,
                builder: (context, controller) {
                  return CoachMarkDesc(
                    text: "Lorem ipsum dolor sit amet. Aut itaque aliquid et dolorem nihil qui Quis dolorem et perferendis internos sit expedita asperiores et vero culpa. Aut quia libero sed vero quis et internos alias est provident earum. ",
                    skip: '',
                    next: 'Done',
                    onSkip: () {
                    },
                    onNext: () {
                      controller.next();
                    },
                  );
                })
          ]),
    ];
  }
}
