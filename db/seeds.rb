# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

50.times do
	assembly = Assembly.create!(
		name: Faker::Vehicle.make_and_model
		)
end

50.times do
	part = Part.create!(
		part_number: Faker::ElectricalComponents.electromechanical
		)
end

Assembly.all.each do |assembly|
	rand(4).times {
		assembly.parts << Part.find(Faker::Number.between(Part.first.id, Part.last.id))
		}
end
