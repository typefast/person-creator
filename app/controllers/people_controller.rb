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
      flash[:success] = "You created a new person!"
      redirect_to @person
    else
      flash[:error] = "There was an error when creating the new person."
      render :new
    end
  end
  
  def show
    @person = Person.find(params[:id])
  end
  
  def all
    @people = Person.all
  end
  
  private
    def person_params
      params.require(:person).permit(:first_name, :last_name)
    end
end
