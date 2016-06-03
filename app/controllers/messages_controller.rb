class MessagesController < ApplicationController

def index
  @league = League.find params[:league_id]
  # binding.pry
  @messages = @league.messages
  @message = Message.new
end

def create
  # binding.pry
message = Message.create! message_params

# ({name: params[:event][:name], user_id: @current_user.id})
flash[:notice] = "Post successfully created"
redirect_to league_messages_path(params[:league_id])
end

def show

end

def new
end

private
  def message_params
    params.require(:message).permit(:message, :league_id)
  end

end
