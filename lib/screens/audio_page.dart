import 'package:flutter/material.dart';
import 'package:news_app/theme/custom_theme.dart';

class AudioPage extends StatefulWidget {
  const AudioPage({Key? key}) : super(key: key);

  @override
  State<AudioPage> createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(
            title: Padding(
      padding: EdgeInsets.all(AppPadding.padding),
      child: AppTheme.audioTitle,
    )));
  }
}
