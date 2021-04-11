import 'package:flutter/material.dart';
import 'package:teste_eprhom/core/values/strings.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:teste_eprhom/core/values/colors.dart';

class LinkedinPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: linkedin_color,
        centerTitle: true,
        title: Text(linkedin),
      ),
      body: SafeArea(
        child: WebView(
          debuggingEnabled: true,
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: 'https://www.linkedin.com/in/kauemurakami/',
        ),
      ),
    );
  }
}
