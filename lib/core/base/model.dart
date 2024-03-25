
///model base class to convert all models in the app using mapper.
abstract class Model{
    const Model():super();
  Map<String, dynamic> toJson();

  Model fromJson(Map<String, dynamic> json);
}