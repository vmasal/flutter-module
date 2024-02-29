import 'package:add_to_app_flutter_module/main.dart';
import 'package:flutter/material.dart';

class HeroListPage extends StatelessWidget {
  const HeroListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hero")),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 500),
          child: ListView.builder(
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HeroDetailPage(heroTag: index),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Hero(
                        tag: index,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            images[index],
                            width: 200,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                          child: Text(
                        'Title: $index',
                        style: Theme.of(context).textTheme.headline6,
                      )),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
