import UIKit

class DataGeneric{
    //Parameters
    var birthday: String
    var firstName: String
    var lastName: String
    var address: String
    var mail : String
    
    //Construct
    init(birthday: String, firstName: String, lastName: String, address: String, mail: String) {
        self.birthday = birthday
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
        self.mail = mail
    }
    
    
    //Functions
    func getAge() -> String{
        let arrBirthday = self.birthday.split(separator: "/")
        let yearBirthday:Int = Int(arrBirthday[2])!
        let arrDateNow = Date().description.split(separator: "-")
        let yearNow:Int = Int(arrDateNow[0])!
        let age: Int
        if(yearBirthday < yearNow){
            age = yearNow - yearBirthday
        }else{
            age = 0
        }
        return String(age);
    }
    
    func toString() -> String {
        var data:String = ""
        data.append(contentsOf: self.firstName + " " + self.lastName)
        data.append(contentsOf: ", ")
        data.append(contentsOf: getAge())
        data.append(contentsOf: " year, ")
        data.append(contentsOf: self.address)
        data.append(contentsOf: ", ")
        data.append(contentsOf: self.mail)
        return data
    }
}

class Person: DataGeneric{
    //Parameters
    var contacts : [Contact]
    var events : [Event]
    
    //Construct
    init(birthday: String, firstName: String, lastName: String, address: String, mail: String, contacts: [Contact], events: [Event]){
        self.contacts = contacts
        self.events = events
        super.init(birthday: birthday, firstName: firstName, lastName: lastName, address: address, mail: mail)
        
    }
    
    //Functions
    override func toString() -> String {
        var data:String = ""
        data.append("[Person \n\t")
        data.append(super.toString())
        data.append(self.getContactString())
        data.append(self.getEventString())
        return data
    }
    func getContactString() -> String {
        var data = ""
        var cont: Int = 0
        
        data.append("\n[Contacts] \n")
        for contact in self.contacts {
            data.append("\t")
            data.append(contentsOf: String(cont + 1))
            data.append(contentsOf: "  ")
            data.append(contact.toString())
            data.append(cont+1 != contacts.count ? "\n" : "")
            cont += 1
        }
        return data
    }
    
    func getEventString() -> String {
        var data = ""
        var cont: Int = 0
    
        data.append("\n[Events] \n")
        for contact in self.events {
            data.append("\t")
            data.append(contentsOf: String(cont + 1))
            data.append(contentsOf: "  ")
            data.append(contact.toString() + "\n")
            cont += 1
        }
        return data
    }
    
}

class Contact: DataGeneric{
    //Parameters
    var business: String
    var relationship: String
    
    //Construct
    init(birthday: String, firstName: String, lastName: String, address: String, mail: String, business: String, relationship: String){
        self.business = business
        self.relationship = relationship
        super.init(birthday: birthday, firstName: firstName, lastName: lastName, address: address, mail: mail)
    }
    
    //Functions
    override func toString() -> String {
        var data:String = ""
        data.append(super.toString())
        data.append(contentsOf: ", ")
        data.append(contentsOf: self.business )
        data.append(contentsOf: ", ")
        data.append(contentsOf: self.relationship)
        return data
    }
}

class Event{
    //Parameters
    var place: String
    var eventDate: String
    var name: String
    var contacts : [Contact]
    
    //Construct
    init(place: String, eventDate: String, name: String, contacts: [Contact]) {
        self.place = place
        self.eventDate = eventDate
        self.name = name
        self.contacts = contacts
    }
    
    //Functions
    func toString() -> String {
        var data:String = ""
        data.append(contentsOf: self.place)
        data.append(contentsOf: ", ")
        data.append(contentsOf: self.eventDate)
        data.append(contentsOf: ", ")
        data.append(contentsOf: self.name)
        data.append(self.getContactString())
        return data
    }
    
    func getContactString() -> String {
        var data = ""
        var cont: Int = 0
        
        data.append("\n\t[Contacts - Event]\n")
        for contact in self.contacts {
            data.append("\t\t")
            data.append(contentsOf: String(cont + 1))
            data.append(contentsOf: "  ")
            data.append(contact.toString())
            data.append(cont+1 != contacts.count ? "\n" : "")
            cont += 1
        }
        return data
    }
}

enum Relationship: String {
    case Grandma = "Grandma"
    case Grandad = "Grandad"
    case Friend = "Friend"
    case Brother = "Brother"
    case Sister = "Sister"
    case Son = "Son"
    case Daughter = "Daughter"
    case Mother = "Mother"
    case Pather = "Pather"
    case Other = "Otro"
    
}

var persons : [Person] = [
    Person.init(birthday: "27/06/1992", firstName: "Jesus", lastName: "Salazar", address : "Av. Benito Juarez # 2", mail : "jesalazar@upax.com.mx",
                contacts: [
                    Contact.init(birthday: "19/09/1997", firstName: "Fernanda", lastName: "Mercado", address : "Av. Los Sauces", mail : "fernanda@bancomer.com", business: "Bancomer", relationship: Relationship.Friend.rawValue),
                    Contact.init(birthday: "20/05/1990", firstName: "Luis", lastName: "Perez", address : "Reforma # 24", mail : "luis@gmail.com", business: "Banco Azteca", relationship: Relationship.Pather.rawValue),
                    Contact.init(birthday: "12/02/1980", firstName: "Jose", lastName: "Aguilar", address : "Av. Siempre Viva", mail : "jose@bancomer.com", business: "Bancomer", relationship: Relationship.Friend.rawValue),
                    Contact.init(birthday: "01/01/1965", firstName: "Guillermo", lastName: "Jimenez", address : "Av. Vicente Guerrero #43", mail : "guille@banamex", business: "Banamex", relationship: Relationship.Grandad.rawValue),
                    Contact.init(birthday: "01/02/1968", firstName: "Luisa", lastName: "Villavicencio", address : "Simulacro #21", mail : "luisa@ejemplares", business: "Los ejemplares", relationship: Relationship.Other.rawValue)
                ],
                events: [
                    Event.init(place: "Salon Jardin", eventDate: "27/11/2018", name: "Cumple Susy",
                        contacts: [
                            Contact.init(birthday: "02/03/1968", firstName: "Luisa", lastName: "Villavicencio", address : "Simulacro #21", mail : "luisa@ejemplares", business: "Los ejemplares", relationship: Relationship.Other.rawValue)
                        ]
                    ),
                    Event.init(place: "Restaurant Alce", eventDate: "01/09/2018", name: "Comida Negocios",
                        contacts: [
                            Contact.init(birthday: "01/02/1968", firstName: "Luisa", lastName: "Villavicencio", address : "Simulacro #21", mail :   "luisa@ejemplares", business: "Los ejemplares", relationship: Relationship.Other.rawValue)
                        ]
                    ),
                    Event.init(place: "Jardin La Villita", eventDate: "30/12/2018", name: "Fin de anio",
                        contacts: [
                            Contact.init(birthday: "01/02/1968", firstName: "Jose", lastName: "Villavicencio", address : "Simulacro #21", mail :   "luisa@ejemplares", business: "Los ejemplares", relationship: Relationship.Son.rawValue),
                            Contact.init(birthday: "01/02/1968", firstName: "Hugo", lastName: "Villavicencio", address : "Simulacro #21", mail :   "luisa@ejemplares", business: "Los ejemplares", relationship: Relationship.Sister.rawValue),
                            Contact.init(birthday: "01/02/1968", firstName: "Karla", lastName: "Villavicencio", address : "Simulacro #21", mail :   "luisa@ejemplares", business: "Los ejemplares", relationship: Relationship.Sister.rawValue)
                        ]
                    ),
                    Event.init(place: "La terraza", eventDate: "15/11/2018", name: "Las amigas",
                        contacts: [
                            Contact.init(birthday: "01/02/1968", firstName: "Luisa", lastName: "Villavicencio", address : "Simulacro #21", mail :   "luisa@ejemplares", business: "Los ejemplares", relationship: Relationship.Other.rawValue)
                        ]
                    ),
                    Event.init(place: "Oficina Torres GS", eventDate: "17/10/2018", name: "Revision de prioridades",
                        contacts: [
                            Contact.init(birthday: "01/02/1968", firstName: "Luisa", lastName: "Villavicencio", address : "Simulacro #21", mail :   "luisa@ejemplares", business: "Los ejemplares", relationship: Relationship.Other.rawValue)
                        ]
                    )
                ]
    ),
    Person.init(birthday: "27/06/1992", firstName: "Cecilia", lastName: "Jimenez", address : "Colinas de Alvarado", mail : "cecilia@outlook.com.mx",
                contacts: [
                    Contact.init(birthday: "19/01/1977", firstName: "Nadia", lastName: "Jimenez", address : "Av. Los Sauces", mail : "nadia@bancomer.com", business: "Bancomer", relationship: Relationship.Friend.rawValue),
                    Contact.init(birthday: "20/05/1990", firstName: "Luis", lastName: "Perez", address : "Reforma # 24", mail : "luis@gmail.com", business: "Banco Azteca", relationship: Relationship.Other.rawValue),
                    Contact.init(birthday: "12/02/1980", firstName: "Jose", lastName: "Aguilar", address : "Av. Siempre Viva", mail : "jose@bancomer.com", business: "Bancomer", relationship: Relationship.Friend.rawValue),
                    Contact.init(birthday: "01/01/1965", firstName: "Guillermo", lastName: "Jimenez", address : "Av. Vicente Guerrero #43", mail : "guille@banamex", business: "Banamex", relationship: Relationship.Grandad.rawValue),
                    Contact.init(birthday: "01/02/1968", firstName: "Luisa", lastName: "Villavicencio", address : "Simulacro #21", mail : "luisa@ejemplares", business: "Los ejemplares", relationship: Relationship.Mother.rawValue)
                ],
                events: [
                    Event.init(place: "Salon Jardin", eventDate: "27/11/2018", name: "Cumple Susy",
                        contacts: [
                            Contact.init(birthday: "01/02/1968", firstName: "Luisa", lastName: "Villavicencio", address : "Simulacro #21", mail :   "luisa@ejemplares", business: "Los ejemplares", relationship: Relationship.Other.rawValue)
                        ]
                    )
                ]
    )]

for person in persons {
    print(person.toString());
}
