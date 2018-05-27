class UsersController < ApiController
  before_action :doorkeeper_authorize!
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /api/v1/users.json
  def index
    render json: User.all
  end

  # GET /api/v1/profile.json
  def profile
    render json: current_user
  end

  # GET /api/v1/users/1.json
  def show
    render json: @user
  end

  # POST /api/v1/users.json
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/users/1.json
  def update
    if @user.update(user_params)
      render json: @user, status: :ok
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/users/1.json
  def destroy
    @user.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.fetch(:user, {})
    end
end
