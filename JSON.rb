require 'json'

patient = {
  resourceType: "Patient",
  name: [
    {
      family: "Mustermann",
      given: ["Max"]
    }
  ],
  gender: "male"
}

puts patient.to_json
puts "##################################"
puts " "

#JSON lesen und in Ruby Hash umwandeln

require 'json'

json_string = '{"name":"Max","age":25}'

data = JSON.parse(json_string)

puts data["name"]
puts data
puts "##################################"
puts " "

#JSON von einer API lesen und in Ruby Hash umwandeln

data = JSON.parse(response)
puts data["resourceType"]