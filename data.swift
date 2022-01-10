var e1 = SalariedEmployee(firstName: "Jim", lastName: "Jackson", annualSalary: 50000)
var e2 = SalariedEmployee(firstName: "Angela", lastName: "Philips", annualSalary: 65000)
var e3 = HourlyEmployee(firstName: "Travis", lastName: "Anderson", hourlyRate: 15, hoursPerWeek: 40)
var e4 = HourlyEmployee(firstName: "Denise", lastName: "Fleming", hourlyRate: 18, hoursPerWeek: 40)
var e5 = CommissionEmployee(firstName: "Sue", lastName: "Anthony", commissionPercent: 20, totalSales: 6000)
var e6 = CommissionEmployee(firstName: "Richard", lastName: "Sherman", commissionPercent: 18, totalSales: 6300)

var EMPLOYEE_DATA: [Int : Employee] =
  [e1.id : e1,
  e2.id : e2,
  e3.id : e3,
  e4.id : e4,
  e5.id : e5,
  e6.id : e6]
