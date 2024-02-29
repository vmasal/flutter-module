import 'package:add_to_app_flutter_module/main.dart';
import 'package:flutter/material.dart';

class HeroDetailPage extends StatelessWidget {
  const HeroDetailPage({
    super.key,
    required this.heroTag,
  });

  final int heroTag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hero Details")),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Hero(
                tag: heroTag,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(images[heroTag]),
                ),
              ),
            ),
          ),
          Expanded(
            child: Text(
              "Content goes here",
              style: Theme.of(context).textTheme.headline5,
            ),
          )
        ],
      ),
    );
  }
}
