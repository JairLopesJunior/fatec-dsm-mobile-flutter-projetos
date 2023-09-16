import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class Car extends StatelessWidget {
  const Car({required this.title, required this.subTitle, required this.imageUrl});

  final String imageUrl;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
          clipBehavior: Clip.antiAlias,
          elevation: 4,
          margin: const EdgeInsets.symmetric(
            vertical: 8, 
            horizontal: 16,
          ),
          child: Column(
            children: [
              Image.network(
                imageUrl,
                height: 800,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
              ListTile(
                title: Text(title),
                subtitle: Text(subTitle),
              ),
                // trailing: const Icon(Icons.arrow_forward),
                // leading: CircleAvatar(
                //   backgroundColor: Colors.blueGrey,
                //   child: Text(index.toString()),
                // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.heart_broken))
                ],
              )
            ],
          ),
        );
  }
}