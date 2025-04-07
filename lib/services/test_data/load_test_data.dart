import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:simple_kanban/utilities/models/task_model/task_model.dart';

Future<List<TaskModel>> loadTestData() async {
  /**loading local test data */
  String testDataString = await rootBundle.loadString('assets/test_data.json');

  List<dynamic> jsonList = json.decode(testDataString);

  return jsonList.map((elements) => TaskModel.fromJson(elements)).toList();
}
