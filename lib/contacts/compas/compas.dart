import 'package:book/contacts/service/contact_service.dart';
import 'package:get_it/get_it.dart';

final GetIt compas = GetIt.instance;

void compasLocator() {
  compas.registerLazySingleton(() => ContactService());
}