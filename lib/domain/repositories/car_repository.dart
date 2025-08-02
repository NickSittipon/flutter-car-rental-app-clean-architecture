import 'package:flutter_car_rental_app_clean_architecture/data/model/car.dart';

abstract class CarRepository {
  Future<List<Car>> fetchCars();
}
