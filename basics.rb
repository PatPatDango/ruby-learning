# Grundlegende Deklarationen in Ruby
# Dieses Modul demonstriert die Kernkonzepte der Ruby-Syntax:
# - Variablendeklaration und Zuweisung
# - Konstanten
# - Methoden und deren Parameter
# - Datentypen (String, Integer, Array, Hash)
# - Kontrollflussstrukturen (if/else, Schleifen)
# - Iteratoren und Blöcke
#
# Die hier gezeigten Konzepte sind Grundlagen für jedes Ruby-Programm
# und werden in der täglichen Entwicklung ständig verwendet.


name = "Alice"  # Variablendeklaration und Zuweisung
AGE = 30        # Konstante
pets = ["Dog", "Cat"]  # Array
puts pets[0]  # Zugriff auf Array-Element

person = {
    name: "Patrick",
    age: 25,
    pets: ["Parrot", "Fish"],
    city: "Frankfurt"
}

#Ruby Hash = JSON Object 
medication = {
    name: "Aspirin",
    dosage: "500mg",
    amount: 20,
    side_effects: ["Nausea", "Dizziness"]
}

patient1 = {
    name: "Igeli",
    age: 25,
    gender: "male"
}
1
patient2 = {
    name:   "Albertina", 
    age:     23,
    gender:  "female"
}

patients = []
patients << patient1  # Hinzufügen eines Patienten zum Array
patients << patient2
puts patients[0][:name]
puts patients[0][:gender]
puts patients[1][:age] # Zugriff auf den Namen des ersten Patienten
puts "##################################"
