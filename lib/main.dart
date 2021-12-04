import 'package:flutter/material.dart';

void main() {
  Student student = new Student();
  String? name = student.getName();
  print("student name = $name");

  Animal a1, a2, a3;
  a1 = new Animal();
  a2 = new Dog();
  a3 = new BabyDog();
  a1.eat();
  a2.eat();
  a3.eat();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Container()));
  }
}

// Tinh truu tuong
// dung tu khoa abstract
abstract class Person {
  String? _name;

  Person(String name){
    _name= name;
  }

  String? getName(){
    return _name;
  }
}

// Class ke thua class abstract can override cac ham trong class abstract
// Tinh ke thua dung tu khoa extends
class Student extends Person {
  Student() : super('') {
    super._name = "Nhung";
  }

  @override
  String? getName(){
    return "Nhung";
  }
}

// tinh dong goi tu khoa private (chi co trong java)


// Tinh da hinh --> cac class Dog, BabyDog ke thua class Animal va deu co ham eat()
// luc goi owr ham main se in ra cac ket qua khac nhau

  class Animal {
    void eat() {
      print("Animal eat");
    }
}

class Dog extends Animal {
    void eat() {
      print("eat bone");
    }
}

class BabyDog extends Dog {
    void eat() {
       print ("drinking milk");
    }
}
