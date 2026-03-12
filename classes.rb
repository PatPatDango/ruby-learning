class Patient 
    def initialize (name, age, gender)
        @name = name
        @age = age
        @gender = gender
    end

    def patient_info
        puts "Name: #{@name}, Age:  #{@age}, Gender: #{@gender}"
    end
end

patient1 = Patient.new("Igelina Albertina", 20, "female")
patient2 = Patient.new("Igeli Bigeli", 25, "male    ")
patient3 = Patient.new("Bebe Igel", 5, "male    ")  
patient1.patient_info
patient2.patient_info
patient3.patient_info