import 'dart:convert';

Paciente pacienteFromJson(String str) => Paciente.fromJson(json.decode(str));
String pacienteToJson(Paciente data) => json.encode(data.toJson());

class Paciente {
  Paciente({
    this.popularity,
    this.knownForDepartment,
    this.gender,
    this.id,
    this.profilePath,
    this.adult,
    this.name,
  });

  double popularity;
  String knownForDepartment;
  int gender;
  int id;
  String profilePath;
  bool adult;
  String name;

  factory Paciente.fromJson(Map<String, dynamic> json) => Paciente(
    popularity: json["popularity"].toDouble(),
    knownForDepartment: json["known_for_department"],
    gender: json["gender"],
    id: json["id"],
    profilePath: json["profile_path"],
    adult: json["adult"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "popularity": popularity,
    "known_for_department": knownForDepartment,
    "gender": gender,
    "id": id,
    "profile_path": profilePath,
    "adult": adult,
    "name": name,
  };

  getProfilePath(){
    if(profilePath == null){
      return "http://via.placeholder.com/350x150";
    } else {
      return "https://image.tmdb.org/t/p/w500/$profilePath";
    }
  }
}
