import 'package:flutter_numbers/bloc/number_bloc.dart';
import 'package:flutter_numbers/infrastructure/api_client.dart';
import 'package:flutter_numbers/infrastructure/repo.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

setuplocator() {
  locator.registerLazySingleton<MyRepo>(() => MyRepo());
  locator.registerLazySingleton<ApiClient>(() => ApiClient());
  locator.registerFactory<NumberBloc>(() => NumberBloc(locator<MyRepo>()));
}
