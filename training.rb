patient1 = {
    name: "Igelina Albertina", 
    age: 20,
    gender: "female"
}

patient2 = {
    name: "Igeli Bigeli",
    age: 25,
    gender: "male"
}

patient3 = {
    name: "Bebe Igel", 
    age: 5, 
    gender: "male"
}

patients = []
patients << patient1
patients << patient2
patients << patient3

patients.each do |patient|
    puts "Name: #{patient[:name]}, Age: #{patient[:age]}, Gender: #{patient[:gender ]} is a patient."
end

patients.each { |patient| puts "Patient: #{patient[:name]}" }   