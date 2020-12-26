import 'package:brick_offline_first/offline_first_with_rest.dart';
import 'package:brick_sqlite/memory_cache_provider.dart';
import 'package:listta_demo_stand/app/models/project.dart';
import 'package:listta_demo_stand/app/models/recurrence_exception.dart';
import 'package:listta_demo_stand/app/models/task.dart';

import 'brick.g.dart';
import 'db/schema.g.dart';

class Repository extends OfflineFirstWithRestRepository {
  Repository({
    String baseEndpoint,
  }) : super(
          restProvider: RestProvider(
            'http://localhost:8080',
            modelDictionary: restModelDictionary,
          ),
          sqliteProvider: SqliteProvider(
            'listta',
            modelDictionary: sqliteModelDictionary,
          ),
          memoryCacheProvider: MemoryCacheProvider(),
          migrations: migrations,
        );

  Future<List<Task>> getTasks() {
    return get<Task>();
  }

  Future<Task> addTask(Task task) {
    return upsert<Task>(task);
  }

  Future<Task> updateTask(Task task) {
    return upsert<Task>(task);
  }

  Future<Task> deleteTask(Task task) {
    return upsert<Task>(task);
  }

  Future<List<Project>> getProjects() {
    return get<Project>();
  }

  Future<Project> addProject(Project project) {
    return upsert<Project>(project);
  }

  Future<Project> updateProject(Project project) {
    return upsert<Project>(project);
  }

  Future<List<RecurrenceException>> getExceptions() {
    return get<RecurrenceException>();
  }

  Future<RecurrenceException> addException(RecurrenceException exception) {
    return upsert<RecurrenceException>(exception);
  }

  Future<RecurrenceException> updateException(RecurrenceException exception) {
    return upsert<RecurrenceException>(exception);
  }

  Future<RecurrenceException> deleteException(RecurrenceException exception) {
    return upsert<RecurrenceException>(exception);
  }
}
