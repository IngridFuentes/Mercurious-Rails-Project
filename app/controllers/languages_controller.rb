class LanguagesController < ApplicationController
  def index
    @languages = Language.all
  end

  def show
    @language = Language.find(params[:id])
  end

  def new
    @language = Language.new
  end

  def create
    @language = Language.new(language_params)
    if @language.valid?
      @language.save
      redirect_to @language
    else
      flash[:message] = "It exists language"
      render :new
    end
  end

  def edit
    @language = Language.find(params[:id])
  end

  def update
    @language = Language.find(params[:id])
    @language.update(language_params)
    redirect_to language_path(@language)
  end

  def delete
    @language = Language.find(params[:id])
    @language.destroy
    redirect_to @language
  end

  private

  def language_params
    params.require(:language).permit(:language_name, :level)
  end
end
