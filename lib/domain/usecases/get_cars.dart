import 'package:flutter_car_rental_app_clean_architecture/data/model/car.dart';
import 'package:flutter_car_rental_app_clean_architecture/domain/repositories/car_repository.dart';

class GetCars {
  final CarRepository repository;

  GetCars(this.repository);

  Future<List<Car>> call() async {
    return await repository.fetchCars();
  }
}
