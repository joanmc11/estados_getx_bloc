// ignore_for_file: public_member_api_docs, sort_constructors_first
class Usuario {
  String nombre;
  int edad;
  List<String> profesiones;

  Usuario({
    required this.nombre,
    required this.edad,
    required this.profesiones,
  });

  copyWith({
    String? nombre,
    int? edad,
    List<String>? profesiones,
  }) =>
      Usuario(
        nombre: nombre ?? this.nombre,
        edad: edad ?? this.edad,
        profesiones: profesiones ?? this.profesiones,
      );
}
