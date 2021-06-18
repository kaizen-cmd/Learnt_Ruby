bank_db = {}

class Customer

    @@id_g = 1000

    attr_accessor :id, :name, :password, :balance

    def initialize(name, password)
        @@id_g += 1
        @id = @@id_g
        @name = name
        @password = password
        @balance = 0
        puts "Your account number is " + @@id_g.to_s
    end

    def deposit(amount)
        @balance += amount
        puts "Remaining balance " + @balance.to_s
    end

    def withdraw(amount)
        if @balance <= 0
            puts "Balance is zero. Cannot withdraw"
        else
            @balance -= amount
            puts "Remaining balance " + @balance.to_s
        end
    end

    def view_balance

        puts "Your balance is " + @balance.to_s

    end

end

welcome_menu = "
1. New User
2. Exisitng User
"

customer_menu = "
1. Deposit money
2. Withdraw money
3. View Balance
4. Logout
"

while true

    puts welcome_menu

    choice = gets.chomp().to_i

    case choice

        when 1

            puts "Enter name"
            name = gets.chomp()
            puts "Enter password"
            password = gets.chomp()

            new_customer = Customer.new(name, password)

            bank_db[new_customer.id] = new_customer

        when 2

            puts "Enter account number"
            account_no = gets.chomp().to_i
            puts "Enter password"
            password = gets.chomp()

            if bank_db[account_no].password == password
                
                customer = bank_db[account_no]
                puts "Welcome " + customer.name
                
                while true

                    puts customer_menu

                    choice2 = gets.chomp().to_i

                    case choice2

                        when 1

                            puts "Enter amount to deposit"
                            amount = gets.chomp().to_i
                            customer.deposit(amount)
                        
                        when 2

                            puts "Enter amount to withdraw"
                            amount = gets.chomp().to_i
                            customer.withdraw(amount)
                        
                        when 3

                            customer.view_balance

                        when 4

                            break
                    
                    end

                end

            else
                puts "Account number or password does not match"
                break
            end
    end
end