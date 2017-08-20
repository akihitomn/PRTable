class MessagesController < ApplicationController
  before_action :set_message, only: [:create, :destroy]

  def create
    @message = @story.messages.new(message_params)
    if @message.save
      respond_to do |format|
        format.html
        format.json
      end
    else
      flash[:alert] = "メッセージを入力してください"
    end
  end

  def destroy
  end

  private

  def set_message
    @company = Company.find(params[:company_id])
    @story = Story.find(params[:story_id])
    @likes = Like.where(story_id: params[:id])
    @messages = Message.where(story_id: params[:story_id])
  end

  def message_params
    params.require(:message).permit(:body, :image).merge(user_id: current_user.id)
  end
end
