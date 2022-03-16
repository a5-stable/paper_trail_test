class SpecialUsersController < ApplicationController
  before_action :set_special_user, only: %i[ show edit update destroy ]

  # GET /special_users or /special_users.json
  def index
    @special_users = SpecialUser.all
  end

  # GET /special_users/1 or /special_users/1.json
  def show
  end

  # GET /special_users/new
  def new
    @special_user = SpecialUser.new
  end

  # GET /special_users/1/edit
  def edit
  end

  # POST /special_users or /special_users.json
  def create
    @special_user = SpecialUser.new(special_user_params)

    respond_to do |format|
      if @special_user.save
        format.html { redirect_to special_user_url(@special_user), notice: "Special user was successfully created." }
        format.json { render :show, status: :created, location: @special_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @special_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /special_users/1 or /special_users/1.json
  def update
    respond_to do |format|
      if @special_user.update(special_user_params)
        format.html { redirect_to special_user_url(@special_user), notice: "Special user was successfully updated." }
        format.json { render :show, status: :ok, location: @special_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @special_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /special_users/1 or /special_users/1.json
  def destroy
    @special_user.destroy

    respond_to do |format|
      format.html { redirect_to special_users_url, notice: "Special user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_special_user
      @special_user = SpecialUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def special_user_params
      params.require(:special_user).permit(:name, :age, :description, :favorite_food, :published)
    end
end
