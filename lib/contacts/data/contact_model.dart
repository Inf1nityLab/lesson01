
import 'package:hive/hive.dart';
part 'contact_model.g.dart';

@HiveType(typeId: 2)
class ContactModel{
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String number;

  ContactModel(this.name, this.number);
}

