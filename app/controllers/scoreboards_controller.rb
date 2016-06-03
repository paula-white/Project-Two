class ScoreboardsController < ApplicationController
  # def index
  #   # @league = League.find params[:league_id]
  #   # @users = User.
  #   # @league = League.find params[:league_id]
  #   # # binding.pry
  #   # @scoreboard = @league.scoreboards
  #   # @league = League.find params[:league_id]
  #   # binding.pry
  #   # @scoreboard = @league.scoreboard
  #
  #   # scores
  #   # elo
  #   # save these in instance variables @scores @users @leagues
  # end

  def show
    @league = League.find params[:league_id]
    @creator = User.find @league.creator_id
    league_users = LeaguesUsers.where :league_id => @league.id
    @user_scores = []
    league_users.each do |league_user|
      user_score = {}
      user_score[:user_name] = (User.find league_user.user_id).name
      user_score[:score] = league_user.score
      @user_scores << user_score
    end

    # binding.pry
  end

  def update
    @league = League.find params[:league_id]
    entry = LeaguesUsers.find_by :league_id => @league.id, :user_id => @current_user.id
    # binding.pry
    entry.score = params[:wins].to_i + (entry.score || 0)

    entry.save

    redirect_to league_scoreboard_path(@league.id)
  end
end
