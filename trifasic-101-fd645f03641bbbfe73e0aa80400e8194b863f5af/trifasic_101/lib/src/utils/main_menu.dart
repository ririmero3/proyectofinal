import 'package:flutter/material.dart';
import 'package:trifasic_101/src/models/mantenimiento_model.dart';
import 'package:trifasic_101/src/widgets/location_widget.dart';
import 'package:trifasic_101/src/widgets/mantenimientos_widget.dart';
import 'package:trifasic_101/src/widgets/materiales_widget.dart';

class ItemMenu {
  String title;
  IconData icon;
  ItemMenu(this.icon, this.title);
}

List<ItemMenu> menuOptions = [
  ItemMenu(Icons.home, "Inicio"),
  ItemMenu(Icons.build, "Mantenimientos"),
  ItemMenu(Icons.cable, "Materiales"),
  //ItemMenu(Icons.search, "Buscar"),
  //ItemMenu(Icons.people, "Técnicos")
];

List<ItemMenu> materiales = [
  ItemMenu(Icons.light, "Luces"),
  ItemMenu(Icons.build, "Llaves"),
  ItemMenu(Icons.cable, "Cables"),
  ItemMenu(Icons.play_arrow, "Cortadora"),
  ItemMenu(Icons.line_style, "Pérdiga"),
  ItemMenu(Icons.light, "Luces"),
  ItemMenu(Icons.build, "Llaves"),
  ItemMenu(Icons.cable, "Cables"),
  ItemMenu(Icons.play_arrow, "Cortadora"),
  ItemMenu(Icons.line_style, "Pérdiga"),
  ItemMenu(Icons.light, "Luces"),
  ItemMenu(Icons.build, "Llaves"),
  ItemMenu(Icons.cable, "Cables"),
  ItemMenu(Icons.play_arrow, "Cortadora"),
  ItemMenu(Icons.line_style, "Pérdiga"),
  ItemMenu(Icons.light, "Luces"),
  ItemMenu(Icons.build, "Llaves"),
  ItemMenu(Icons.cable, "Cables"),
  ItemMenu(Icons.play_arrow, "Cortadora"),
  ItemMenu(Icons.line_style, "Pérdiga"),
];

List<Widget> homeWidgets = [
  const LocationWidget(),
  const MantenimientosWidget(),
  const MaterialesWidget()
];

List<Mantenimiento> ejemploMantenimiento = [
  Mantenimiento(
      titulo: "Instalar medidor",
      descripcion: "Instalación de medidor 120 - 220 voltios",
      estado: 0,
      prioridad: 1),
  Mantenimiento(
      titulo: "Mantenimiento preventivo transformador",
      descripcion:
          "Realización mantenimiento preventivo de transformador 13 KVA",
      estado: 0,
      prioridad: 2),
  Mantenimiento(
      titulo: "Reafirmación de tensores",
      descripcion:
          "Reafirmación de tensores en los postes de la red industrial sur",
      estado: 0,
      prioridad: 2),
  Mantenimiento(
      titulo: "Reconexión de línea",
      descripcion:
          "Reconexión de las líneas de alta tensión en el transformador",
      estado: 0,
      prioridad: 1),
  Mantenimiento(
      titulo: "Cambio de luminarias",
      descripcion: "Cambio de luminarias públicas en redes de industrial norte",
      estado: 0,
      prioridad: 3),
  Mantenimiento(
      titulo: "Cambio de luminarias",
      descripcion: "Cambio de luminarias públicas en redes de industrial norte",
      estado: 0),
];
