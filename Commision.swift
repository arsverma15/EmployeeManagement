class CommissionEmployee: Employee{
  var commissionPercent: Int
  var totalSales: Int
  override var description: String {
      return super.description + " (commision)\n commissionPercent: \(commissionPercent) totalSales: \(totalSales)"

  }

  init(firstName: String, lastName: String, commissionPercent: Int, totalSales: Int) {
    self.commissionPercent = commissionPercent
    self.totalSales = totalSales
    super.init(firstName: firstName, lastName: lastName, employeeType: .CommissionEmployee)
    
  }

  override func getWeeklyPay() -> Int{
    return ((commissionPercent*totalSales)/100)
  }
}