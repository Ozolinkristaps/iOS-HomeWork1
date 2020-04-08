import UIKit

struct Employee {
    
    let name: String
    let surname: String
    let birthday: Date
    let gender: EmployeeGender
    let experience: EmployeeExperience
    let salary: Double
    let departmentName: String
    let longTermEmployee: Bool
    
    enum EmployeeGender {
        case male
        case female
    }
    
    enum EmployeeExperience {
        case praktikants
        case jaunakaisSpecialists
        case specialists
        case vecakaisSpecialists
        case projektaVadiba
        case nodalasVadiba
        case uznemumaVadiba
    }
}

//darbinieku sākums

let d1 = Employee(name: "Claus", surname: "Rosenbluth", birthday: Date(timeIntervalSince1970: 661737600), gender: .male, experience: .praktikants, salary: 900.00, departmentName: "iOS", longTermEmployee: false)
let d2 = Employee(name: "Adolf", surname: "Fleischhacker", birthday: Date(timeIntervalSince1970: 853459200), gender: .male, experience: .jaunakaisSpecialists, salary: 1200.00, departmentName: "Web", longTermEmployee: false)
let d3 = Employee(name: "Wanja", surname: "Lippert", birthday: Date(timeIntervalSince1970: 73526400), gender: .male, experience: .uznemumaVadiba, salary: 10000.00, departmentName: "Menedzments", longTermEmployee: true)
let d4 = Employee(name: "Mirjam", surname: "Spahn", birthday: Date(timeIntervalSince1970: 419904000), gender: .female, experience: .nodalasVadiba, salary: 900.00, departmentName: "UX-Dizains", longTermEmployee: false)
let d5 = Employee(name: "Rebecca", surname: "Schirmer", birthday: Date(timeIntervalSince1970: 942278400), gender: .female, experience: .praktikants, salary: 5000.00, departmentName: "BackEnd", longTermEmployee: false)
let d6 = Employee(name: "Helmine", surname: "Kestenbaum", birthday: Date(timeIntervalSince1970: 323136000), gender: .female, experience: .vecakaisSpecialists, salary: 4000.00, departmentName: "Testesana", longTermEmployee: true)
let d7 = Employee(name: "Vanessa", surname: "Schmitt", birthday: Date(timeIntervalSince1970: 165628800), gender: .female, experience: .projektaVadiba, salary: 4000.20, departmentName: "Android", longTermEmployee: true)
let d8 = Employee(name: "Anna", surname: "Kalniņa", birthday: Date(timeIntervalSince1970: 942278400), gender: .female, experience: .specialists, salary: 3000.99, departmentName: "Web", longTermEmployee: true)

// darbinieku beigas


var employees: [Employee]
employees = [d1, d2, d3, d4, d5, d6, d7, d8]



func pirmaisUzdevums(_ employees: [Employee],_ minAge: Int) {
    
    let filteredEmployees = 
    
    let sortedByBirthDay = employees.sorted(by: {$0.departmentName < $1.departmentName})

    
    for printEmployee in sortedByBirthDay {
        print("Nodaļa: \(printEmployee.departmentName) | Dzimums: \(printEmployee.gender) | Vecums: \(printEmployee.birthday))")
    }
}
//
//func otraisUzdevums() {
//
//}
//
//func tresaisUzdevums() {
//
//}
//
pirmaisUzdevums(employees, 30)
