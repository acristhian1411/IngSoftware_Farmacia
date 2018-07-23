class UserController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @user = User.all
  end

  def show
    
  end
  
  def new
    @user = User.new
  end

  # POST /clientes
  # POST /clientes.json
  def create
    @user = User.new(cliente_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Usuario fue creado con éxito.' }
        format.json { render :show, status: :created, location: @cliente }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clientes/1
  # PATCH/PUT /clientes/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Usuario fue actualizado con éxito.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes/1
  # DELETE /clientes/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to '/index'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :encrypted_password, :name, :admin)
    end
end

