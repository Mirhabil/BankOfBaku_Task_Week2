void main() {
  List<Employee> employeeList = [Manager(10000), Developer(6000)];

  for (var employee in employeeList) {
    employee.calculateSalary();
    print(employee._salary);
  }
}

abstract class Employee {
  double _salary = 0;

  void get getSalary => _salary;

  void set setSalary(double employeeSalary) {
    if (employeeSalary > 0) {
      _salary = employeeSalary;
    }
  }

  void calculateSalary();
}

class Manager extends Employee {
  double managerSalary;

  Manager(this.managerSalary);

  @override
  void calculateSalary() {
    setSalary = managerSalary;
  }
}

class Developer extends Employee {
  double developerSalary;

  Developer(this.developerSalary);

  @override
  void calculateSalary() {
    setSalary = developerSalary;
  }
}
