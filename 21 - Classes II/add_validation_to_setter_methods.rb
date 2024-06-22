class SmartPhone
    attr_reader :username, :production_number # set and get value
    attr_writer :password # set value only

    def initialize(username, password)
        @username = username
        @password = password
        @production_number = generate_production_number
    end

    def password(password)
        if password.length > 5
            @password = password
        end
    end

    def generate_production_number
        random_number = rand(10000..99999)
        another_random_number = rand(10000..99999)
        "Random values are #{random_number} and #{another_random_number}"
    end

    def get_password
        @password
    end
end

phone = SmartPhone.new("truongdeptrai", "xaolonclmm")
p phone.production_number
p phone.generate_production_number # work because function isn't private
p phone.get_password # doesn't work

puts 

phone.password = "dapchetbamay"
p phone.get_password