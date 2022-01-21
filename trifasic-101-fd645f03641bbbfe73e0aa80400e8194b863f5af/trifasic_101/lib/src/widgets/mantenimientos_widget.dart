import 'package:flutter/material.dart';
import 'package:trifasic_101/src/models/mantenimiento_model.dart';
import 'package:trifasic_101/src/services/mantenimiento_service.dart';

class MantenimientosWidget extends StatefulWidget {
  const MantenimientosWidget({Key? key}) : super(key: key);

  @override
  State<MantenimientosWidget> createState() => _MantenimientosWidgetState();
}

class _MantenimientosWidgetState extends State<MantenimientosWidget> {
  final MantenimientoService mantenimientoService = MantenimientoService();
  List<Mantenimiento>? listaMantenimientos;

  @override
  void initState() {
    super.initState();
    // ignore: avoid_print
    print("1. Inicio del widget");
    _downloadMantenimientos();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("2. Visualización del widget");
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 4.0),
      child: listaMantenimientos == null
          ? const Center(
              child: SizedBox(
                  height: 50.0,
                  width: 50.0,
                  child: CircularProgressIndicator()),
            )
          : listaMantenimientos!.isEmpty
              ? const Center(child: Text("No hay mantenimientos registrados"))
              : ListView(
                  children: listaMantenimientos!.map((e) {
                    Widget? prioridad;

                    if (e.prioridad == null) {
                      prioridad = const SizedBox();
                    }

                    if (e.prioridad == 1) {
                      prioridad = const CircleAvatar(
                          backgroundColor: Colors.red,
                          child:
                              Icon(Icons.priority_high, color: Colors.white));
                    }

                    if (e.prioridad == 2) {
                      prioridad = const CircleAvatar(
                          backgroundColor: Colors.amber,
                          child:
                              Icon(Icons.priority_high, color: Colors.black));
                    }

                    if (e.prioridad == 3) {
                      prioridad = const CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Icon(Icons.low_priority, color: Colors.white));
                    }

                    return Card(
                        child: ListTile(
                            leading: const Icon(Icons.build),
                            title: Text(e.titulo ?? ""),
                            subtitle: Text(e.descripcion ?? ""),
                            trailing: prioridad));
                  }).toList(),
                ),
    );
  }

  _downloadMantenimientos() async {
    // ignore: avoid_print
    print("1.1 Invocación al servicio de mantenimiento");
    listaMantenimientos = await mantenimientoService.getMantenimientos();
    setState(() {
      // ignore: avoid_print
      print("3. Cambio de estado");
    });
  }
}
