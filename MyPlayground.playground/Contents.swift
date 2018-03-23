struct Person {
    
    var firstName: String {
        didSet {
            if let spaceIndex = firstName.index(of: " ") {
                print("no spaces allowed yo. revert the change")
                firstName = oldValue
            } else {

            print("The value of firstName changed from \(oldValue) to \(firstName)")
        }
    }
    }
    
    var lastName: String
    
    static var outOfWedlock = "Snow"
    
    var fullName: String {
        get {
        return "\(firstName) \(lastName)"
    }
        set {
            if let spaceIndex = newValue.index(of: " ") {
                firstName = String(newValue[..<spaceIndex])
                lastName = String(newValue[newValue.index(after: spaceIndex)...])
            }
        }
        
    }
    lazy var isAlive: Bool = {
        print("check le life")
        if fullName == "Waymar Royce" {
            return false
        } else {
            return true
        }
    }()
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

var person = Person(firstName: "Ray", lastName: "Wenderlich")

person.firstName = "Vicki"
let vicki =  person.firstName

person.lastName = "Coluter"

person.fullName
person.fullName = "Jason Hoang"
person.firstName
person.lastName

person.lastName = Person.outOfWedlock

person.fullName

person.firstName = "moo snow"

print("here 1")
person.isAlive
var person2 = Person(firstName: "Waymar",  lastName: "Royce")
person2.isAlive
