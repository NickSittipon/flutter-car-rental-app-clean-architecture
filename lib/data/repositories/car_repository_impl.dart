import 'package:flutter_car_rental_app_clean_architecture/data/datasources/firebase_car_data_source.dart';
import 'package:flutter_car_rental_app_clean_architecture/data/model/car.dart';
import 'package:flutter_car_rental_app_clean_architecture/domain/repositories/car_repository.dart';

class CarRepositoryImpl implements CarRepository {
  final FirebaseCarDataSource dataSource;

  CarRepositoryImpl(this.dataSource);

  @override
  Future<List<Car>> fetchCars() {
    return dataSource.getCars();
  }
}
