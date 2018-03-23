//: Playground - noun: a place where people can play

struct Person {
    var firstName: String
    var lastName: String
}

var person = Person(firstName: "Ray", lastName: "Wenderlich")

person.firstName = "Vicki"
let vicki = person.firstName
