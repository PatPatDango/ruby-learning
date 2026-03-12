names = ["Bob", "Joe", "Steve", "Janice", "Susan", "Helen"]

names.each do |name|
    puts "Hello, #{name}!"
end

names.each { |name| puts name }