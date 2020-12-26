import 'package:brick_offline_first/offline_first_with_rest.dart';
import 'package:listta_demo_stand/app/models/project.dart';
import 'package:listta_demo_stand/app/models/recurrence_exception.dart';

@ConnectOfflineFirstWithRest(
  restConfig: RestSerializable(
    fieldRename: FieldRename.none,
    fromKey: 'result',
    endpoint: r'''{
      if (query.action == QueryAction.upsert) {
        return "/tasks";
      }

      if (query.action == QueryAction.get && query?.where != null) {
        final byId = Where.firstByField('id', query.where);

        if (byId?.value != null) {
          return "/tasks/${byId.value}";
        }
      }

      if (query.action == QueryAction.get) {
        return "/tasks";
      }

      if (query.action == QueryAction.delete) {
        if (instance == null) return null;

        return "/tasks/${instance.id}";
      }

      return null;
    }''',
  ),
)
class Task extends OfflineFirstWithRestModel {
  @Sqlite(unique: true)
  final int id;

  @OfflineFirst(where: {'id': "data['recurrenceExceptionIds']"})
  @Rest(name: 'recurrenceExceptionIds')
  final List<RecurrenceException> recurrenceExceptions;

  @OfflineFirst(where: {'id': "data['projectIds']"})
  @Rest(name: 'projectIds')
  final List<Project> projects;

  Task({
    this.id,
    List<RecurrenceException> recurrenceExceptions,
    List<Project> projects,
  })  : recurrenceExceptions = recurrenceExceptions ?? [],
        projects = projects ?? [];

  @override
  String toString() {
    return 'Task{id: $id, recurrenceExceptions: $recurrenceExceptions, projects: $projects}';
  }
}
