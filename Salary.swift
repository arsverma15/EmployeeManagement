class SalariedEmployee: Employee{
  var annualSalary: Int
  override var description: String {
      return super.description + "(salaried)\n annualSalary: \(annualSalary)"

  }

  init(firstName: String, lastName: String, annualSalary: Int) {
    self.annualSalary = annualSalary
    super.init(firstName: firstName, lastName: lastName, employeeType: .SalariedEmployee)
  }

  override func getWeeklyPay() -> Int{
    return (annualSalary / 52)
  }
}