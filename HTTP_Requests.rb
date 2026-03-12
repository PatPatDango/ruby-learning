#Inhalt von Website holen 
require 'net/http'
require 'json'

url = URI("https://server/fhir/Patient")

#HTTP GET Request senden
response = Net::HTTP.get(url)

data = JSON.parse(response)
puts data

#HTTP POST Request senden

patient = {
  resourceType: "Patient",
  gender: "male"
}

http = Net::HTTP.new(url.host, url.port)
request = Net::HTTP::Post.new(url)

request["Content-Type"] = "application/json"
request.body = patient.to_json

response = http.request(request)
puts response.body