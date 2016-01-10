class PeopleController < ApplicationController
  def index
    @people = Person.all
  end
  
  def new
    @person = Person.new
  end
  
  def create
    @person = Person.create(person_params)
    if @person.save
      redirect_to @person
    else
      render :new
    end
  end
  
  def show
    @person = Person.find(params[:id])
  end
  
  private
    def person_params
      params.require(:person).permit(:first_name, :last_name)
    end
end
