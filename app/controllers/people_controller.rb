class PeopleController < ApplicationController

	def index
		@people = Person.all 
	end

	def show
		@person = Person.find(params[:id])
	end

	def new
		
	end

	def create
		@person = Person.create(person_params)
		redirect_to people_path
	end

	def edit
		@person = Person.find(params[:id])
	end

	def update
		@person = Person.find(params[:id])
		@person.update(person_params)
		redirect_to person_path(@person.id)
	end

	def destroy
		@person = Person.find(params[:id])
		@person.destroy
		redirect_to people_path
	end

	private 

	def person_params
		params.require(:person).permit(:name, :gender, :mother_id, :father_id)
	end

end