import 'package:f290_dsm_pdm2_playground_widgets/widgets/car_widget.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    const imageUrl = 'https://images.pexels.com/photos/2317904/pexels-photo-2317904.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';
    final faker = Faker();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Car(
            title: faker.vehicle.model(),
            subTitle: faker.vehicle.colorYearMakeModel(),
            imageUrl: faker.image.image(
              keywords: ['car'],
              random: true
            ),
          );
      },),
    );
  }
}