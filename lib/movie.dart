import "package:get/get.dart";

//first method ->

// mark the varibales inside the class as observable
// class Movie {
//   var name = "wanted".obs;
//   var ticket = "200".obs;
// }

//second method ->

// make the entire class observable

class Movie {
  String? name;
  int? ticket;
  Movie({required this.name, required this.ticket});
}
