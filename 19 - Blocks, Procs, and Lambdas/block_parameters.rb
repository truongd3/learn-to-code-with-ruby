def speak_please
    yield("Truong")
end

speak_please {|name| puts "Hey #{name}, please speak"}