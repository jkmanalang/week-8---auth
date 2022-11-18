import 'package:flutter_test/flutter_test.dart';
import 'package:week7_networking_discussion/models/todo_model.dart';

void main() {
  group("Todo Model", () {
    // one unit test
    test('Test Todo Model constructor', () {
      final modelInstance = Todo(
          userId: 1,
          completed: false,
          title: "Test Todo"); // import todo and instantiate
      expect(modelInstance.userId, 1);
      expect(modelInstance.completed, false);
      expect(modelInstance.title, "Test Todo");
    });

    // one test for json
    test('Test Todo Model toJson method', () {
      final modelInstance =
          Todo(userId: 1, completed: false, title: "Test Todo");

      // do something
      final converted = modelInstance.toJson(modelInstance); // invoke toJson

      //test the actual vs the expected
      expect(
          converted, {"userId": 1, "title": "Test Todo", "completed": false});
    });
  });
}
