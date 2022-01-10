enum EmployeeType{
  case CommissionEmployee, HourlyEmployee, SalariedEmployee
}

class Employee: PaidWeekly, CustomStringConvertible {
  static var nextIDNumber: Int = 0
  var id: Int
  var firstName: String
  var lastName: String
  var employeeType: EmployeeType

  init(firstName: String, lastName: String, employeeType: EmployeeType){
    self.firstName = firstName
    self.lastName = lastName
    self.employeeType = employeeType
    id = Employee.getNextID()
  }
  //nextID will be in static func and not init
  //cant use employee in getnext id becuase its universal
  static func getNextID() -> Int{
    nextIDNumber += 1
    return nextIDNumber
  }
  var description: String{
    return "\(id) \(lastName), \(firstName)"
  }

  func getWeeklyPay() -> Int{fatalError("Employee entered is not hourly, salary, or commision-based.")}
}


protocol PaidWeekly {
func getWeeklyPay() -> Int
}