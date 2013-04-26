class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
    @user = current_user
    @microposts = @team.microposts
    @micropost = Micropost.new
  end
end
