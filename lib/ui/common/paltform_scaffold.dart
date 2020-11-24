import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformScaffold extends StatelessWidget {
  final Widget child;
  final CupertinoNavigationBar cupertinoNavigationBar;
  final AppBar materialAppBar;

  const PlatformScaffold({
    Key key,
    this.cupertinoNavigationBar,
    this.materialAppBar,
    @required this.child,
  })  : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return Material(
        child: SafeArea(
          child: CupertinoPageScaffold(
            navigationBar: cupertinoNavigationBar,
            child: child,
          ),
        ),
      );
    } else {
      return SafeArea(
        child: Scaffold(
          appBar: materialAppBar,
          body: child,
        ),
      );
    }
  }
}
