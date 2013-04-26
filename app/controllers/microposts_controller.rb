class MicropostsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy

  def index
    @team = Team.find(params[:team_id])
    @microposts = @team.microposts
    @micropost = Micropost.new
  end

  def create
    @team = Team.find(params[:team_id])
    @micropost = current_user.microposts.build(content: params[:micropost][:content])
    @micropost.team = @team
    if @micropost.save
      flash[:success] = "Bleep created!"
      redirect_to team_path(@team)
    else
      render 'static_pages/home'
    end
  end

  def destroy
    @micropost.destroy
    redirect_to root_url
  end

  private

  def correct_user
    @micropost = current_user.microposts.find_by_id(params[:id])
    redirect_to root_url if @micropost.nil?
  end
end