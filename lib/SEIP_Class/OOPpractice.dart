

void main(){
  var emp = Employee(1, "Akash", "Male");
  print(emp.id);
  emp.show();

}
class Employee {
  var id;
  var name;
  var gender;
  var hobby;


  Employee(this.id, this.name,this.gender){
    id = id;
    name = name;
    gender = gender;
  }

  void show(){
    print(id);
    print(name);
    print(gender);
  }
}

class HR extends Employee{
  var salary;

  HR(super.id, super.name, super.gender);

}
