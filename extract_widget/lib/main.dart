import 'package:flutter/material.dart';

import 'components/custom_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExtractWidget(),
    );
  }
}
class ExtractWidget extends StatefulWidget {
  const ExtractWidget({super.key});

  @override
  State<ExtractWidget> createState() => _ExtractWidgetState();
}

class _ExtractWidgetState extends State<ExtractWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Extract Widget'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
            CustomWidget(data: 'Winter',),
            SizedBox(height: 50,),
            CustomWidget(data: 'Spring',),
            SizedBox(height: 50,),
            CustomWidget(data: 'Summer',),
            SizedBox(height: 50,),
            CustomWidget(data: 'Autumn',),
          ],),
        ),
    );
  }
}


