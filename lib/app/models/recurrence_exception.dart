import 'package:brick_offline_first/offline_first_with_rest.dart';

@ConnectOfflineFirstWithRest()
class RecurrenceException extends OfflineFirstWithRestModel {
  @Sqlite(unique: true)
  final int id;

  RecurrenceException({this.id});

  @override
  String toString() {
    return 'RecurrenceException{id: $id}';
  }
}
