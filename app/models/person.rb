class Person < ApplicationRecord

	belongs_to :mother, class_name: 'Person', optional: true
	belongs_to :father, class_name: 'Person', optional: true

	validates :gender, inclusion: { in: ['male', 'female']}, presence: true
	validates :name, presence: true


	def children
		if gender == 'male'
			Person.where(father_id: id)
		else
			Person.where(mother_id: id)
		end
	end
end
