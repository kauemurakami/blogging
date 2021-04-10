// To parse this JSON data, do
//
//     final posts = postsFromJson(jsonString);

import 'dart:convert';

import 'package:get/get.dart';

Posts postsFromJson(String str) => Posts.fromJson(json.decode(str));

String postsToJson(Posts data) => json.encode(data.toJson());

class Posts {
  Posts({
    this.result,
  });

  RxList<Rx<Result>> result;

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
        result: RxList<Rx<Result>>.from(
            json["Result"].map((x) => Result.fromJson(x).obs)),
      );

  Map<String, dynamic> toJson() => {
        "Result": List<dynamic>.from(result.map((x) => x.toJson())),
      };
}

class Result {
  Result(
      {this.id,
      this.codigo,
      this.respostas,
      this.dataHora,
      this.estaLido,
      this.autorId,
      this.autorNome,
      this.autorImageUrl,
      this.texto,
      this.versao,
      this.abrirRespostas,
      this.liked});

  String id;
  bool liked;
  String codigo;
  int respostas;
  String dataHora;
  bool estaLido;
  String autorId;
  String autorNome;
  String autorImageUrl;
  bool abrirRespostas;
  String texto;
  int versao;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["ID"],
        codigo: json["Codigo"],
        respostas: json["Respostas"],
        dataHora: json["DataHora"],
        estaLido: json["EstaLido"],
        autorId: json["AutorID"],
        liked: false,
        abrirRespostas: false,
        autorNome: json["AutorNome"],
        autorImageUrl: json["AutorImageUrl"],
        texto: json["Texto"],
        versao: json["Versao"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "Codigo": codigo,
        "Respostas": respostas,
        "DataHora": dataHora,
        "EstaLido": estaLido,
        "AutorID": autorId,
        "AutorNome": autorNome,
        "AutorImageUrl": autorImageUrl,
        "Texto": texto,
        "Versao": versao,
      };
}
