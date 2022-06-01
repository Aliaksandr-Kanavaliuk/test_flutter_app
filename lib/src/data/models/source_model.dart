import 'package:test_flutter_app/src/domain/entities/source.dart';

class SourceModel extends Source {
  SourceModel({String? id, String? name}) : super(id: id, name: name);

  factory SourceModel.fromJson(Map<String, dynamic> json) {
    return SourceModel(
      id: json['id'] as String,
      name: json['name'] as String,
    );
  }
}
