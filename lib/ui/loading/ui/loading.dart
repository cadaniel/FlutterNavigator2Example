import 'package:flutter/material.dart';
import 'package:navigator_example/ui/common/platform_page.dart';

class LoadingPage extends PlatformPage {
  LoadingPage() : super(LoadingWidget(), "/loading");
}

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Loading"),
        ),
      ),
    );
  }
}
