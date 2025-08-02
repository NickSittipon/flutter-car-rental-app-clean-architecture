import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_car_rental_app_clean_architecture/data/datasources/firebase_car_data_source.dart';
import 'package:flutter_car_rental_app_clean_architecture/data/repositories/car_repository_impl.dart';
import 'package:flutter_car_rental_app_clean_architecture/domain/repositories/car_repository.dart';
import 'package:flutter_car_rental_app_clean_architecture/domain/usecases/get_cars.dart';
import 'package:flutter_car_rental_app_clean_architecture/presentation/bloc/car_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void initInjection() {
  try {
    getIt.registerLazySingleton<FirebaseFirestore>(
      () => FirebaseFirestore.instance,
    );
    getIt.registerLazySingleton<FirebaseCarDataSource>(
      () => FirebaseCarDataSource(firestore: getIt<FirebaseFirestore>()),
    );
    getIt.registerLazySingleton<CarRepository>(
      () => CarRepositoryImpl(getIt<FirebaseCarDataSource>()),
    );
    getIt.registerLazySingleton<GetCars>(() => GetCars(getIt<CarRepository>()));
    getIt.registerFactory(() => CarBloc(getCars: getIt<GetCars>()));
  } catch (e) {
    throw e;
  }
}
