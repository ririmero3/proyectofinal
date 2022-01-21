import 'package:trifasic_101/src/models/mantenimiento_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MantenimientoService {
  MantenimientoService();

  Future<List<Mantenimiento>?> getMantenimientos() async {
    List<Mantenimiento> result = [];
    try {
      var url = Uri.parse('https://museumsq.web.app/api/museosur');
      var response = await http.get(url);
      if (response.body.isEmpty) return result;

      List<dynamic> listBody = json.decode(response.body);
      for (var item in listBody) {
        var mantenimiento = Mantenimiento.fromJson(item);
        result.add(mantenimiento);
      }
      return result;
    } catch (ex) {
      // ignore: avoid_print
      print(ex);
      return null;
    }
  }
}
