class LikesController < ApplicationController
  before_action :set_like

  def create
    @like = current_user.likes.new(story_id: params[:story_id])
    @like.save
  end

  def destroy
    like = current_user.likes.find_by(story_id: params[:story_id])
    like.destroy
  end

  private

  def set_like
    @story = Story.find(params[:story_id])
    @company = Company.find(params[:company_id])
    @likes = Like.where(story_id: params[:story_id])
    @id_name = "#like-link-#{@story.id}"
    @id_heart = "#heart-#{@story.id}"
  end
end
