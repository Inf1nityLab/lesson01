import 'package:book/new_project/to_do_service.dart';
import 'package:get_it/get_it.dart';


final GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => ToDoService());
}