import 'package:flutter/material.dart';
import 'package:flutter_car_rental_app_clean_architecture/data/model/car.dart';
import 'package:flutter_car_rental_app_clean_architecture/presentation/widgets/car_card.dart';
import 'package:flutter_car_rental_app_clean_architecture/presentation/widgets/more_card.dart';

class CarDetailsPage extends StatelessWidget {
  final Car car;

  const CarDetailsPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.info_outline), Text(' Infomation')],
        ),
      ),
      body: Column(
        children: [
          CarCard(
            car: Car(
              model: car.model,
              distance: car.distance,
              fuelCapacity: car.fuelCapacity,
              pricePerHour: car.pricePerHour,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xffF3F3F3),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/user.png'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Nick Sittipon',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('\$4.253', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 172,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/maps.png'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                MoreCard(
                  car: Car(
                    model: car.model + "-1",
                    distance: car.distance + 100,
                    fuelCapacity: car.fuelCapacity + 100,
                    pricePerHour: car.pricePerHour + 10,
                  ),
                ),
                SizedBox(height: 5),
                MoreCard(
                  car: Car(
                    model: car.model + "-2",
                    distance: car.distance + 200,
                    fuelCapacity: car.fuelCapacity + 200,
                    pricePerHour: car.pricePerHour + 20,
                  ),
                ),
                SizedBox(height: 5),
                MoreCard(
                  car: Car(
                    model: car.model + "-3",
                    distance: car.distance + 300,
                    fuelCapacity: car.fuelCapacity + 300,
                    pricePerHour: car.pricePerHour + 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
