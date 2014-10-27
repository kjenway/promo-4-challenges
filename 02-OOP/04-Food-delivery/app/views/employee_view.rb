

class EmployeeView
  def display_employees_list(employees)
    employees.each do |employee|
      puts "#{employee.id} - #{employee.name} - Status: #{employee.manager ? 'manager' : 'delivery boy' }"
    end
  end

  def display_delivery_guy_list(employees)
      employees.each do |employee|
        if employee.manager == false
        puts "#{employee.id} - #{employee.name}"
        end
      end
  end

  def ask_for_login_name
     puts "Please enter your name"
     gets.chomp
  end

  def ask_for_login_password
     puts "Please enter your password:"
     gets.chomp
  end

  def login_welcome(login_name, employees)
    employees.each do |employee|
      if employee.name == login_name
       puts "Welcome, #{login_name}.  Your access level is : #{employee.manager ? 'MANAGER' : 'DELIVERY GUY'}"
       puts "----------------------"
      return "#{employee.manager ? 'MANAGER' : 'DELIVERY GUY'}"
      end
    end
  end

end