import 'package:flutter/cupertino.dart';

import '../../widgets/welcomWidget.dart';

class WelcomPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WeclcomWidget("assets/images/myimage2.png", "Track your Progess",
        "When you track your progress you have facts, not subjective reflections. We often overestimate how often we do things, but tracking eliminates this.");
  }
}
