import 'package:flutter/cupertino.dart';
import 'package:listta_demo_stand/app/models/project.dart';
import 'package:listta_demo_stand/app/models/task.dart';
import 'package:listta_demo_stand/app/repository.dart';

final repository = Repository();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await repository.initialize();

  final project = Project(id: 1);
  await repository.addProject(project);

  final task = Task(id: 1);
  await repository.addTask(task);

  task.projects.add(project);
  await repository.updateTask(task);

  print(task);
  print(await repository.getTasks());

  task.projects.clear();
  await repository.updateTask(task);

  print(task);
  print(await repository.getTasks());

  runApp(App());
}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Demo stand',
      home: CupertinoPageScaffold(
        child: Center(
          child: Text('Listta'),
        ),
      ),
    );
  }
}
