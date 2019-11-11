# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Employee.find_or_create_by(name: "James", email: "james@james.com", phone: "6192839843", employee_number: 1234)
Employee.find_or_create_by(name: "Tiffany", email: "TheyCallMeRDawg@james.com", phone: "123456789", employee_number: 1234)
Employee.find_or_create_by(name: "Ritricia", email: "ritricia@james.com", phone: "8888888888", employee_number: 123

Client.find_or_create_by(name: "John", phone: "3333333333", address: "tinypineapples@aol.com")
Client.find_or_create_by(name: "Rebecca", phone: "1111111111", address: "hero@aol.com")
Client.find_or_create_by(name: "Roscoe", phone: "2222222222", address: "bobatit@aol.com")
Client.find_or_create_by(name: "Laina", phone: "4444444444", address: "pragmatic@aol.com")
Client.find_or_create_by(name: "Jeremy", phone: "5555555555", address: "Tina.Turner@aol.com")
Client.find_or_create_by(name: "heather", phone: "6666666666", address: "PineTineapples@aol.com")

Clientappointment.find_or_create_by(description: "Meeting", time: "3333333333", date: "date", location: "location", client_id: 1, employee_id: 1)
Clientappointment.find_or_create_by(description: "Meeting", time: "1111111111", date: "date", location: "location two", client_id: 2, employee_id: 1)
Clientappointment.find_or_create_by(description: "Meeting", time: "2222222222", date: "date", location: "location three", client_id: 3, employee_id: 2)
Clientappointment.find_or_create_by(description: "Meeting", time: "4444444444", date: "date", location: "location four", client_id: 4 , employee_id: 2)
Clientappointment.find_or_create_by(description: "Meeting", time: "6666666666", date: "date", location: "location five", client_id: 5, employee_id: 3)

Client.find_or_create_by(name: "Liam", phone: "3333333333", address: "pomme@aol.com")
Client.find_or_create_by(name: "Danny", phone: "1111111111", address: "chaussure@aol.com")
Client.find_or_create_by(name: "Felix", phone: "2222222222", address: "petit@aol.com")
Client.find_or_create_by(name: "Adam", phone: "4444444444", address: "lach@aol.com")
Client.find_or_create_by(name: "Emily", phone: "5555555555", address: "ecran@aol.com")
Client.find_or_create_by(name: "Dora", phone: "6666666666", address: "lunette@aol.com")



