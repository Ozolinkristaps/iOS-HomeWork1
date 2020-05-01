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

// helper

let dateToday = Date()
let test = DateFormatter()

test.dateFormat = "dd.MM.yyyy"
let secondsToToday = dateToday.timeIntervalSince1970
let secondsInYear = 31556926



// -------


// employees

let d1 = Employee(name: "Claus", surname: "Rosenbluth", birthday: test.date(from: "11.11.1986")!, gender: .male, experience: .praktikants, salary: 900.00, departmentName: "iOS", longTermEmployee: false)
let d2 = Employee(name: "Adolf", surname: "Fleischhacker", birthday: test.date(from: "12.11.1977")!, gender: .male, experience: .jaunakaisSpecialists, salary: 1200.00, departmentName: "Web", longTermEmployee: false)
let d3 = Employee(name: "Wanja", surname: "Lippert", birthday: test.date(from: "11.07.1983")!, gender: .male, experience: .uznemumaVadiba, salary: 10000.00, departmentName: "UX-Dizains", longTermEmployee: true)
let d4 = Employee(name: "Mirjam", surname: "Spahn", birthday: test.date(from: "21.01.1975")!, gender: .female, experience: .nodalasVadiba, salary: 900.00, departmentName: "iOS", longTermEmployee: false)
let d5 = Employee(name: "Rebecca", surname: "Schirmer", birthday: test.date(from: "11.11.1987")!, gender: .female, experience: .praktikants, salary: 5000.00, departmentName: "Testesana", longTermEmployee: false)
let d6 = Employee(name: "Helmine", surname: "Kestenbaum", birthday: test.date(from: "11.01.1987")!, gender: .female, experience: .vecakaisSpecialists, salary: 4000.00, departmentName: "Menedzments", longTermEmployee: true)
let d7 = Employee(name: "Vanessa", surname: "Schmitt", birthday: test.date(from: "14.12.1987")!, gender: .female, experience: .projektaVadiba, salary: 4000.20, departmentName: "BackEnd", longTermEmployee: true)
let d8 = Employee(name: "Anna", surname: "Kalniņa", birthday: test.date(from: "05.07.1977")!, gender: .female, experience: .specialists, salary: 3000.99, departmentName: "iOS", longTermEmployee: true)
let d9 = Employee(name: "Jana", surname: "Kalniņa", birthday: test.date(from: "05.07.1987")!, gender: .female, experience: .specialists, salary: 3000.99, departmentName: "iOS", longTermEmployee: true)
let d10 = Employee(name: "Maija", surname: "Kalniņa", birthday: test.date(from: "05.03.1982")!, gender: .female, experience: .specialists, salary: 3000.99, departmentName: "BackEnd", longTermEmployee: true)
let d11 = Employee(name: "Nastja", surname: "Kalniņa", birthday: test.date(from: "05.07.1984")!, gender: .female, experience: .specialists, salary: 3000.99, departmentName: "Menedzments", longTermEmployee: true)
let d12 = Employee(name: "Ira", surname: "Kalniņa", birthday: test.date(from: "05.07.1977")!, gender: .female, experience: .specialists, salary: 3000.99, departmentName: "iOS", longTermEmployee: true)
let d13 = Employee(name: "Katja", surname: "Kalniņa", birthday: test.date(from: "05.07.1988")!, gender: .female, experience: .specialists, salary: 3000.99, departmentName: "Web", longTermEmployee: true)
let d14 = Employee(name: "Mirdza", surname: "Kalniņa", birthday: test.date(from: "05.07.1978")!, gender: .female, experience: .specialists, salary: 3000.99, departmentName: "iOS", longTermEmployee: true)
let d15 = Employee(name: "Monika", surname: "Kalniņa", birthday: test.date(from: "05.07.1975")!, gender: .female, experience: .specialists, salary: 3000.99, departmentName: "Android", longTermEmployee: true)

// ------------

var allEmployees: [Employee]
allEmployees = [d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15]

// pirmais uzdevums

func pirmaisUzdevums(_ allEmployees: [Employee],_ minAge: Int) {
    print("Pirmais uzdevums:")
    print("")
    
    let filteredEmployees = allEmployees.filter {
        darbinieki in darbinieki.gender == .female && ((Int(secondsToToday) - Int(darbinieki.birthday.timeIntervalSince1970)) / secondsInYear) > minAge
    }
    
    let sortedEmployees = filteredEmployees.sorted(by: {$0.departmentName.lowercased() < $1.departmentName.lowercased()})

    
    for printEmployees in sortedEmployees {
        print("Nodaļa: \(printEmployees.departmentName) | Dzimums: \(printEmployees.gender) | Vecums: \((Int(secondsToToday) - Int(printEmployees.birthday.timeIntervalSince1970)) / secondsInYear )" )
    }
    print("-----------------")
}

// --------------------

// otrais uzdevums

func otraisUzdevums(_ allEmployees: [Employee], _ department: String, _ minAge: Int, _ maxAge: Int) {
    print("Otrais uzdevums:")
    print("")
    
    let filteredEmployees = allEmployees.filter {
        darbinieki in darbinieki.departmentName == department && ((Int(secondsToToday) - Int(darbinieki.birthday.timeIntervalSince1970)) / secondsInYear) > minAge && ((Int(secondsToToday) - Int(darbinieki.birthday.timeIntervalSince1970)) / secondsInYear) < maxAge
    }
    
    var sortedEmployees = filteredEmployees.sorted {
        $0.gender == .female && $1.gender == .male
    }
    sortedEmployees = sortedEmployees.sorted {
        $0.birthday.timeIntervalSince1970 > $1.birthday.timeIntervalSince1970
    }
    
    for printEmployees in sortedEmployees {
        print("Vecums: \((Int(secondsToToday) - Int(printEmployees.birthday.timeIntervalSince1970)) / secondsInYear ) | Dzimums: \(printEmployees.gender) | Vārds: \(printEmployees.name) | Uzvārds: \(printEmployees.surname) | Nodaļa: \(printEmployees.departmentName) | " )
    }

        print("-----------------")
}

// --------------------

// tresais uzdevums

func tresaisUzdevums(_ allEmployees: [Employee]) {
    print("Trešais uzdevums:")
    print("")
    
    var departmentList = ["Uzņēmums"]
    var employeeAgesInEachDepartment = [0]
    var employeesInEachDepartment = [0]
    for current in allEmployees {
        let age = ((Int(secondsToToday) - Int(current.birthday.timeIntervalSince1970)) / secondsInYear)
        let departments = departmentList.firstIndex(of: current.departmentName)
        if (departments == nil) {
            departmentList.append(current.departmentName)
            employeeAgesInEachDepartment.append(age)
            employeesInEachDepartment.append(1)
        }
        else {
            employeeAgesInEachDepartment[departments!] = employeeAgesInEachDepartment[departments!] + age
            employeesInEachDepartment[departments!] = employeesInEachDepartment[departments!] + 1
        }
        employeeAgesInEachDepartment[0] = employeeAgesInEachDepartment[0] + age
        employeesInEachDepartment[0] = employeesInEachDepartment[0] + 1
    }
    var departmentsDictionary = [departmentList[0] : employeeAgesInEachDepartment[0] / employeesInEachDepartment[0]]
    for x in 1...departmentList.count - 1 {
        departmentsDictionary[departmentList[x]] = employeeAgesInEachDepartment[x] / employeesInEachDepartment[x]
    }
    print (departmentsDictionary)
}
// --------------------

print("3. variants")
print("------------")

pirmaisUzdevums(allEmployees, 13)
otraisUzdevums(allEmployees, "iOS", 12, 60)
tresaisUzdevums(allEmployees)
