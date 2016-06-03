class LeaguesController < ApplicationController

  def new
    @league = League.new
    @sport = Sport.find params[:sport_id]
  end

  def create
    league = League.create!({name: params[:league][:name], creator_id: @current_user.id, image: params[:league][:image], sport_id: params[:league][:sport_id]})
    redirect_to "/invite/#{league.id}/#{params[:league][:sport_id]}"
  end

  def show
    @league = League.find params[:id]
    @sport = Sport.find @league.sport_id

  end


    def edit
      @league = League.find params[:id]
    end

    def update
      league = League.find params[:id]
      league.update( image: params[:league][:image], name: params[:league][:name] )
     redirect_to league_path
    end

    def destroy

      league = League.find params[:id]
      league.destroy

      redirect_to leagues_path

    end

  def index
    @leagues = League.where(creator_id: @current_user.id)
  end

  # private
  #   def user_params
  #     params.require(:league).permit(image: params[:league][:image], name: params[:league][:name])
  #   end



end
