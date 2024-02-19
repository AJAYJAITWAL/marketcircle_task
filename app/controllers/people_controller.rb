class PeopleController < ApplicationController
  skip_before_action :verify_authenticity_token 

  def index
    @people = Person.all

    respond_to do |format|
      format.js { render json: @people, include: :detail }
      format.html
    end
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      render json: { person: @person, detail: @person.detail }, status: :created
    else
      render json: { errors: @person.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def details
    @person = Person.find_by(id: params[:person_id])
  end

  private

  def person_params
    params.require(:person).permit(:name, detail_attributes: [:title, :age, :phone, :email])
  end
end
