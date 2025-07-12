import 'package:flutter/material.dart';
import 'package:flutter_car_rental_app_clean_architecture/data/model/car.dart';
import 'package:flutter_car_rental_app_clean_architecture/presentation/widgets/car_card.dart';

class CarListScreen extends StatelessWidget {
  final List<Car> cars = [
    Car(
      model: 'Fotuner GR',
      distance: 870.0,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
    Car(
      model: 'Fotuner GR',
      distance: 870.0,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
    Car(
      model: 'Fotuner GR',
      distance: 870.0,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Car'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarCard(car: cars[index]);
        },
      ),
    );
  }
}
