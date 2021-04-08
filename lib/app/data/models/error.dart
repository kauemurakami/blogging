// To parse this JSON data, do
//
//     final errorModel = errorModelFromJson(jsonString);
//BAD REQUEST
import 'dart:convert';

ErrorModel errorModelFromJson(String str) =>
    ErrorModel.fromJson(json.decode(str));

String errorModelToJson(ErrorModel data) => json.encode(data.toJson());

class ErrorModel {
  ErrorModel({
    this.status,
    this.errors,
    this.message,
  });

  List<Error> errors;
  String message;
  int status;

  factory ErrorModel.fromJson(Map<String, dynamic> json) => ErrorModel(
        errors: List<Error>.from(json["errors"].map((x) => Error.fromJson(x))),
        message: json["message"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "errors": List<dynamic>.from(errors.map((x) => x.toJson())),
        "message": message,
      };
}

class Error {
  Error({
    this.property,
    this.error,
  });

  String property;
  String error;

  factory Error.fromJson(Map<String, dynamic> json) => Error(
        property: json["property"],
        error: json["error"],
      );

  Map<String, dynamic> toJson() => {
        "property": property,
        "error": error,
      };
}
