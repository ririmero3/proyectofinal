// To parse this JSON data, do
//
//     final mantenimiento = mantenimientoFromJson(jsonString);

import 'dart:convert';

import 'package:trifasic_101/src/models/foto_model.dart';

Mantenimiento mantenimientoFromJson(String str) =>
    Mantenimiento.fromJson(json.decode(str));

String mantenimientoToJson(Mantenimiento data) => json.encode(data.toJson());

class Mantenimiento {
  Mantenimiento({
    this.titulo,
    this.descripcion,
    this.fechaCreacion,
    this.fechaAsignacion,
    this.fechaRealizacion,
    this.prioridad,
    this.estado,
    this.observacion,
    this.fotoInicio,
    this.fotoFinal,
  });

  String? titulo;
  String? descripcion;
  DateTime? fechaCreacion;
  DateTime? fechaAsignacion;
  DateTime? fechaRealizacion;
  int? prioridad;
  int? estado;
  String? observacion;
  Foto? fotoInicio;
  Foto? fotoFinal;

  factory Mantenimiento.fromJson(Map<String, dynamic> json) => Mantenimiento(
        titulo: json["titulo"],
        descripcion: json["descripcion"],
        fechaCreacion: json["fechaCreacion"] == null
            ? null
            : DateTime.parse(json["fechaCreacion"]),
        fechaAsignacion: json["fechaAsignacion"] == null
            ? null
            : DateTime.parse(json["fechaAsignacion"]),
        fechaRealizacion: json["fechaRealizacion"] == null
            ? null
            : DateTime.parse(json["fechaRealizacion"]),
        prioridad: json["prioridad"],
        estado: json["estado"],
        observacion: json["observacion"],
        fotoInicio: json["fotoInicio"] == null
            ? null
            : Foto.fromJson(json["fotoInicio"]),
        fotoFinal:
            json["fotoFinal"] == null ? null : Foto.fromJson(json["fotoFinal"]),
      );

  Map<String, dynamic> toJson() => {
        "titulo": titulo,
        "descripcion": descripcion,
        "fechaCreacion": fechaCreacion!.toIso8601String(),
        "fechaAsignacion": fechaAsignacion!.toIso8601String(),
        "fechaRealizacion": fechaRealizacion!.toIso8601String(),
        "prioridad": prioridad,
        "estado": estado,
        "observacion": observacion,
        "fotoInicio": fotoInicio!.toJson(),
        "fotoFinal": fotoFinal!.toJson(),
      };
}
