class UsersController < ApplicationController
  before_action :authorized?
  # skip_before_action :require_login, only: [:index]

  def index
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to @user
    else
      flash[:message] = "This username already exists in our database"
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def delete
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path(@user)
  end

  # "/users/1/meetups"
  def meetups
    @user = User.find(params[:id])

    render :meetups
  end

  def add_languages
    @user = User.find(params[:id])
    @user_language = UserLanguage.new
    render :show
  end

  private

  def user_params
    params.require(:user).permit(:name, :city, :gender, :bio, :email, :age, :password)
  end

  # def require_login
  #   return head(:forbidden) unless session.include? :user_id
  # end

  def require_login
    unless authorized?
      flash[:error] = "You must be logged in to access this section"
      # redirect_to @user
    end
  end
end
