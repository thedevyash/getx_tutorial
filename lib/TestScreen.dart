import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 100,
              floating: true,
              flexibleSpace: Placeholder(),
              title: Text("SliverAppBar"),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    childCount: 100,
                    (context, index) => ListTile(
                          title: Text(index.toString()),
                        )))
          ],
        ),
      ),
    );
  }
}
