class Person < ApplicationRecord

	belongs_to :mother, class_name: Person
	belongs_to :father, class_name: Person

	validates :gender, inclusion: { in: ['male', 'female']}, presence: true
	validates :name, presence: true

end
