class Api::V1::PetsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_pet, only: %i[show update destroy]

  # GET /pets
  def index
    @pets = Pet.order(created_at: :desc)
    render json: { data: @pets, status: 200, message: 'all products successfully' }, status: :ok
  end

  # GET /pets/1
  def show
    render json: ['data' => @pet], status: :found
  end

  # POST /pets
  def create
    @pet = Pet.new(pet_params)

    if @pet.save
      render json: @pet, status: :created
    else
      render json: @pet.errors.full_messages, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pets/1
  def update
    if @pet.update(pet_params)
      render json: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pets/1
  def destroy
    @pet.destroy!
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pet
    @pet = Pet.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def pet_params
    params.require(:pet).permit(:name, :type_of_pet, :description)
  end
end
