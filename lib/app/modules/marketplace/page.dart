import 'package:flutter/material.dart';
import 'package:teste_eprhom/core/values/strings.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MarketPlacePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(open_source_project),
      ),
      body: SafeArea(
        child: WebView(
          debuggingEnabled: true,
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl:
              'https://marketplace.visualstudio.com/items?itemName=get-snippets.get-snippets&ssr=false#overview',
        ),
      ),
    );
  }
}
