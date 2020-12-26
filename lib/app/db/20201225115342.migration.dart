// GENERATED CODE EDIT WITH CAUTION
// THIS FILE **WILL NOT** BE REGENERATED
// This file should be version controlled and can be manually edited.
part of 'schema.g.dart';

// While migrations are intelligently created, the difference between some commands, such as
// DropTable vs. RenameTable, cannot be determined. For this reason, please review migrations after
// they are created to ensure the correct inference was made.

// The migration version must **always** mirror the file name

const List<MigrationCommand> _migration_20201225115342_up = [
  InsertTable('RecurrenceException'),
  InsertTable('_brick_Task_recurrence_exceptions'),
  InsertTable('_brick_Task_projects'),
  InsertTable('Task'),
  InsertTable('Project'),
  InsertColumn('id', Column.integer, onTable: 'RecurrenceException', unique: true),
  InsertForeignKey('_brick_Task_recurrence_exceptions', 'Task', foreignKeyColumn: 'l_Task_brick_id', onDeleteCascade: true, onDeleteSetDefault: false),
  InsertForeignKey('_brick_Task_recurrence_exceptions', 'RecurrenceException', foreignKeyColumn: 'f_RecurrenceException_brick_id', onDeleteCascade: true, onDeleteSetDefault: false),
  InsertForeignKey('_brick_Task_projects', 'Task', foreignKeyColumn: 'l_Task_brick_id', onDeleteCascade: true, onDeleteSetDefault: false),
  InsertForeignKey('_brick_Task_projects', 'Project', foreignKeyColumn: 'f_Project_brick_id', onDeleteCascade: true, onDeleteSetDefault: false),
  InsertColumn('id', Column.integer, onTable: 'Task', unique: true),
  InsertColumn('id', Column.integer, onTable: 'Project', unique: true),
  CreateIndex(columns: ['l_Task_brick_id', 'f_RecurrenceException_brick_id'], onTable: '_brick_Task_recurrence_exceptions', unique: true),
  CreateIndex(columns: ['l_Task_brick_id', 'f_Project_brick_id'], onTable: '_brick_Task_projects', unique: true)
];

const List<MigrationCommand> _migration_20201225115342_down = [
  DropTable('RecurrenceException'),
  DropTable('_brick_Task_recurrence_exceptions'),
  DropTable('_brick_Task_projects'),
  DropTable('Task'),
  DropTable('Project'),
  DropColumn('id', onTable: 'RecurrenceException'),
  DropColumn('l_Task_brick_id', onTable: '_brick_Task_recurrence_exceptions'),
  DropColumn('f_RecurrenceException_brick_id', onTable: '_brick_Task_recurrence_exceptions'),
  DropColumn('l_Task_brick_id', onTable: '_brick_Task_projects'),
  DropColumn('f_Project_brick_id', onTable: '_brick_Task_projects'),
  DropColumn('id', onTable: 'Task'),
  DropColumn('id', onTable: 'Project'),
  DropIndex('index__brick_Task_recurrence_exceptions_on_l_Task_brick_id_f_RecurrenceException_brick_id'),
  DropIndex('index__brick_Task_projects_on_l_Task_brick_id_f_Project_brick_id')
];

//
// DO NOT EDIT BELOW THIS LINE
//

@Migratable(
  version: '20201225115342',
  up: _migration_20201225115342_up,
  down: _migration_20201225115342_down,
)
class Migration20201225115342 extends Migration {
  const Migration20201225115342()
    : super(
        version: 20201225115342,
        up: _migration_20201225115342_up,
        down: _migration_20201225115342_down,
      );
}
