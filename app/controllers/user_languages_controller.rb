class UserLanguagesController < ApplicationController
  def index
    @user_languages = UserLanguage.all
  end

  def show
    @user_language = UserLanguage.find(params[:id])
  end

  def new
    @user_language = UserLanguage.new
  end

  def create
    @user_language = UserLanguage.create(userlanguage_params)
    redirect_to user_language_path(@user_language)
  end

  def edit
    @user_language = UserLanguage.find(params[:id])
  end

  def update
    @user_language = UserLanguage.find(params[:id])
    @user_language.update(user_language_params)
    redirect_to @user_language
  end

  def delete
    @user_language = UserLanguage.find(params[:id])
    @user_language.destroy
    redirect_to @user_language
  end

  private

  def user_language_params
    params.require(:user_language).permit(:user_id, :language_id, :fluent)
  end
end
