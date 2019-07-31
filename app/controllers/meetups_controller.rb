class MeetupsController < ApplicationController
  def index
    @meetups = Meetup.all
  end

  def show
    @meetup = Meetup.find(params[:id])
  end

  def new
    @meetup = Meetup.new
  end

  def edit
    @meetup = Meetup.find(params[:id])
  end

  private

  def meetup_params
    params.require(:meetup).permit(:requester_id, :acceptor_id)
  end
end
