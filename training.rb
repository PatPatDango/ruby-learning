require 'json'

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
patients.each { |patient| puts patient.to_json }

# FHIR Beispiel 
patient = {
  resourceType: "Patient", # FHIR Resource Type
  name: [
    {
      family: "Mustermann",     # Familienname
      given: ["Max"]            # Vorname(n) als Array
    }
  ],
  gender: "male"                # Geschlecht
}

# JSON-String aus dem Ruby Hash erstellen
json_patient = patient.to_json

# HTTP POST Request senden
require 'net/http'
require 'json'

url = URI("https://server/fhir/Patient")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Post.new(url)
request["Content-Type"] = "application/json"
request.body = json_patient

response = http.request(request)

puts response.body

## typisch Ruby
patient = {
  resourceType: "Patient",
  gender: "male"
}

response = Net::HTTP.post(
  URI("https://server/fhir/Patient"),
  patient.to_json,
  "Content-Type" => "application/json"
)