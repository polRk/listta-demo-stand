import 'package:brick_offline_first/offline_first_with_rest.dart';

@ConnectOfflineFirstWithRest()
class Project extends OfflineFirstWithRestModel {
  @Sqlite(unique: true)
  final int id;

  Project({this.id});

  @override
  String toString() {
    return 'Project{id: $id}';
  }
}
