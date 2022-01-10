class HourlyEmployee: Employee{
  var hourlyRate: Int
  var hoursPerWeek: Int
  override var description: String {
      return super.description + " (hourly)\n hourlyRate: \(hourlyRate) hoursPerWeek: \(hoursPerWeek)"

  }

  init(firstName: String, lastName: String, hourlyRate: Int, hoursPerWeek: Int) {
    self.hourlyRate = hourlyRate
    self.hoursPerWeek = hoursPerWeek
    super.init(firstName: firstName, lastName: lastName, employeeType: .HourlyEmployee)
  }
  override func getWeeklyPay() -> Int{
    return hourlyRate * hoursPerWeek
  }
}