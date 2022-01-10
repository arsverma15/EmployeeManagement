class EMSVC {
  var employees: [Int:Employee] = [:]  //the primary data structure

  func loadEmployees(employees: [Int : Employee]){
    self.employees = employees
  }

  func helpMessage(){
    //prints help message
    print("     info - get an employee's info\n     report - print all employee information\n     adds - add salaried employee\n      addh - add hourly employee\n      addc - add commission employee\n      pay - run the weekly payroll report\n     help - display this menu\n      quit - exit the system")
  }

  func info(){
    //get employees info
    print("Enter the employee id", terminator:" -> ")
    let infoID = Int (readLine()!)
    for (id, description) in employees{
      if id == infoID{
        print(description)
      }
    }
  }

  func report(){
    //prints all the employyes description
    for (_, description) in employees{
      print(description)
    }
  }

  func adds(){
    print("Enter first name", terminator:" -> ")
    let fname=String(readLine()!)
    print("Enter last name", terminator:" -> ")
    let lname = String(readLine()!)
    print("Enter annual salary", terminator:" -> ")
    let asalary=Int(readLine()!)!
    let news = SalariedEmployee(firstName: fname, lastName: lname, annualSalary: asalary)
    employees[news.id] = news
    print("\(fname) \(lname) has been added to the system")
  }

  func addc(){
    print("Enter first name", terminator:" -> ")
    let fname=String(readLine()!)
    print("Enter last name", terminator:" -> ")
    let lname = String(readLine()!)
    print("Enter commission percentage", terminator:" -> ")
    let cpercent = Int(readLine()!)!
    print("Enter total sales", terminator: " -> ")
    let tsales = Int(readLine()!)!
    let news = CommissionEmployee(firstName: fname, lastName: lname, commissionPercent: cpercent, totalSales: tsales)
    employees[news.id] = news
    print("\(fname) \(lname) has been added to the system")

  }

  func addh(){
    print("Enter first name", terminator:" -> ")
    let fname=String(readLine()!)
    print("Enter last name", terminator:" -> ")
    let lname = String(readLine()!)
    print("Enter hourly rate", terminator:" -> ")
    let rateperhour = Int(readLine()!)!
    print("Enter the hours per week", terminator:" -> ")
    let perweek = Int(readLine()!)!
    let news = HourlyEmployee(firstName: fname, lastName: lname, hourlyRate: rateperhour, hoursPerWeek: perweek)
    employees[news.id] = news
    print("\(fname) \(lname) has been added to the system")

  }

  func pay(){
    //print(getWeeklyPay)
    for (_,value) in employees{
      print("\(value.firstName) \(value.lastName) - $\(value.getWeeklyPay())")
    }
  }

	func runSystem(){
    //main driver of system
    print("WELCOME TO THE EMPLOYEE MANAGEMENT SYSTEM")
    print("command", terminator:" -> ")
    var command = readLine()!

   while(command != "quit"){
    switch command{
    case "help": helpMessage()
    case "info": info()
    case "report": report()
    case "adds": adds()
    case "addc": addc()
    case "addh": addh()
    case "pay": pay()
    default: print("The input was not valid.")
    }
    print("command", terminator:" -> ")
    command = readLine()!
   }
   print("...exiting the system...")
  }
	
}
