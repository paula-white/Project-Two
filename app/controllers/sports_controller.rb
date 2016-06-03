class SportsController < ApplicationController
  def index
    @sports = Sport.all
  end

  def new
    # Show the login form
  end

end
