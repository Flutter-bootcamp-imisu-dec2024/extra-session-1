void main() {

  // manuel way to create object
  // Person p1 = Person(name: "Ali", age: 23);
  // print(p1.age);
  // print(p1.name);
  
  // another manuel way 
  for (var item in people) {
    Person p2 = Person(name: item["name"], age: item["age"]);
  }

  // best way to make model form json
  List<Person> myData = [];
  for (var item in people) {
    myData.add(Person.fromJson(item));

    // another  to crate object the save it in list
    // Person p2 = Person.fromJson(item);
    // myData.add(p2);
  }

// print list content
  print("\n${"*" * 10} print list content ${"*" * 10}");
  for (var element in myData) {
    print(element.name);
    print(element.age);
  }

  // print data from function 
  printData();
} // end main

class Person {
  int? age;
  String? name;
  Person({this.age, this.name});

  // named constructor
  factory Person.fromJson(Map json) {
    return Person(age: json["age"], name: json["name"]);
  }
}

List people = [
  {"name": "Naser", "age": 20},
  {"name": "Salman", "age": 18},
  {"name": "Aseel", "age": 14},
];


// print data from function
void printData(){
  print("\n${"*" * 5} print data form function content ${"*" * 5}");
    for (var element in people) {
    print(element["name"]);
    print(element["age"]);
  }
}