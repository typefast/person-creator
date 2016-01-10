class PeopleController < ApplicationController
  def index
    @people = Person.all
  end
  
  def new
    @person = Person.new
  end
  
  private
    def person_params
      params.require(:person).permit(:first_name, :last_name)
    end
end
