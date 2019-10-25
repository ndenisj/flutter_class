// main(List<String> args) {
//   var person = Person();
//   person.firstName = 'Denis Jay';
//   person.printName();
// }

// class Person {
//   String firstName;

//   printName() {
//     print(firstName);
//   }
// }

// Using Constructor
main(List<String> args) {
  var person = Person(age: '20', firstName: 'Denis');
  person.printName();
}

class Person {
  String firstName;
  String age;

  //Person(this.firstName, this.age); // using positional argument

  Person({this.firstName, this.age}); // using named argument

  printName() {
    print("$firstName am $age");
  }
}
